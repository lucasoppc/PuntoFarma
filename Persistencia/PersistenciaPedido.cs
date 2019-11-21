using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using EntidadesCompartidas;

namespace Persistencia
{
    public class PersistenciaPedido
    {
        public static void Agregar(Pedido p)
        {      
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("realizarpedido", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("nombreusuario", p.Cliente.NombreLogueo);
            cmd.Parameters.AddWithValue("codigo", p.Medicamento.Codigo);
            cmd.Parameters.AddWithValue("ruc", p.Medicamento.Proveedor.Ruc);
            cmd.Parameters.AddWithValue("cantidad", p.Cantidad);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();

                if((int)retorno.Value==1)
                {
                    throw new Exception("Agregado correctamente");
                }
                else if((int)retorno.Value==-1)
                {
                    throw new Exception("El nombre de usuario no existe");
                }
                else if((int)retorno.Value==-2)
                {
                    throw new Exception("El codigo de medicamento no existe");
                }
                else if((int)retorno.Value==-3)
                {
                    throw new Exception("El codigo de Proveedor no existe");
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
        }

        public static Pedido Buscar(int numero)
        {
            Pedido p=null;
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("buscarpedido", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("numero", numero);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();

                    int codigo = (int)reader["numero"];
                    string usuario = (string)reader["nombreusuario"];
                    int ruc = (int)reader["ruc"];
                    int cantidad = (int)reader["cantidad"];
                    string estado = (string)reader["estado"];
                    Cliente c = PersistenciaCliente.Buscar(usuario);
                    Medicamento m = PersistenciaMedicamento.Buscar(codigo, ruc);
                    p = new Pedido(codigo, c, m, cantidad, estado);
                }
                reader.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
            return p;
        }

        public static void Eliminar(Pedido p)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("eliminarpedido", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("numero",p.NumeroPedido);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();

                if((int)retorno.Value == 1)
                {
                    throw new Exception("Eliminado correctamente");
                }
                else if((int)retorno.Value==-1)
                {
                    throw new Exception("No existe el pedido");
                }
                else if((int)retorno.Value == -2)
                {
                    throw new Exception("El Pedido ya fue enviado y/o entregado");
                }
                else if ((int)retorno.Value == -3)
                {
                    throw new Exception("Error en la base de datos");
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public static List<Pedido> Listar(Cliente c)
        {
            List<Pedido> lista = new List<Pedido>();

            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listarpedidosxcliente", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("nombreusuario", c.NombreLogueo);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    while(reader.Read())
                    {
                        int numero =(int)reader["numero"];
                        string nombreusuario = (string)reader["nombreusuario"];
                        int codigo = (int)reader["codigo"];
                        int ruc = (int)reader["ruc"];
                        int cantidad = (int)reader["cantidad"];
                        string estado = (string)reader["estado"];
                        Medicamento m = PersistenciaMedicamento.Buscar(codigo,ruc);
                        Pedido p = new Pedido(numero,c, m, cantidad, estado);

                        lista.Add(p);
                    }
                }
                reader.Close();
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
            return lista;
        }

        public static List<Pedido> ListarGenerados(Medicamento m)
        {
            List<Pedido> lista = new List<Pedido>();
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listarpedidosgenerados", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("codigo", m.Codigo);
            cmd.Parameters.AddWithValue("ruc", m.Proveedor.Ruc);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    while(reader.Read())
                    {
                        int codigo = (int)reader["codigo"];
                        string usuario = (string)reader["nombreusuario"];
                        int articulo = (int)reader["codigo"];
                        int ruc = (int)reader["ruc"];
                        int cantidad = (int)reader["cantidad"];
                        string estado = (string)reader["estado"];
                        Cliente c = PersistenciaCliente.Buscar(usuario); 
                        Pedido p = new Pedido(codigo, c, m, cantidad, estado);
                        lista.Add(p);
                    }
                    reader.Close();
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
            return lista;

        }

        public static List<Pedido> ListarEntregados(Medicamento m)
        {
            List<Pedido> lista = new List<Pedido>();
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listarpedidosentregados", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("codigo", m.Codigo);
            cmd.Parameters.AddWithValue("ruc", m.Proveedor.Ruc);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int codigo = (int)reader["codigo"];
                        string usuario = (string)reader["nombreusuario"];
                        int articulo = (int)reader["codigo"];
                        int ruc = (int)reader["ruc"];
                        int cantidad = (int)reader["cantidad"];
                        string estado = (string)reader["estado"];
                        Cliente c = PersistenciaCliente.Buscar(usuario);
                        Pedido p = new Pedido(codigo, c, m, cantidad, estado);
                        lista.Add(p);
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
            return lista;

        }

        public static List<Pedido> ListarTodos(Medicamento m)
        {
            List<Pedido> lista = new List<Pedido>();
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listartodos", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("codigo", m.Codigo);
            cmd.Parameters.AddWithValue("ruc", m.Proveedor.Ruc);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int codigo = (int)reader["numero"];
                        string usuario = (string)reader["nombreusuario"];
                        int ruc = (int)reader["ruc"];
                        int cantidad = (int)reader["cantidad"];
                        string estado = (string)reader["estado"];
                        Cliente c = PersistenciaCliente.Buscar(usuario);
                        Pedido p = new Pedido(codigo, c, m, cantidad, estado);
                        lista.Add(p);
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
            return lista;
        }

        public static List<Pedido> ListadoCompleto()
        {
            List<Pedido> lista = new List<Pedido>();
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listarpedidos", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int numero = (int)reader["numero"];
                        string usuario = (string)reader["nombreusuario"];
                        int codigo = (int)reader["codigo"];
                        int ruc = (int)reader["ruc"];
                        int cantidad = (int)reader["cantidad"];
                        string estado = (string)reader["estado"];
                        Cliente c = PersistenciaCliente.Buscar(usuario);
                        Medicamento m = PersistenciaMedicamento.Buscar(codigo, ruc);
                        Pedido p = new Pedido(numero, c, m, cantidad, estado);
                        lista.Add(p);
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
            return lista;
        }

        public static void CambioEstado(Pedido p)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("cambiarestadopedido", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("numero", p.NumeroPedido);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();

                if((int)retorno.Value == 1)
                {
                    throw new Exception("Se cambio el estado");
                }
                else if((int)retorno.Value == -1)
                {
                    throw new Exception("El pedido no existe");
                }
                else if ((int)retorno.Value == -2)
                {
                    throw new Exception("El pedido ya fue entregado");
                }
                else if((int)retorno.Value==-3)
                {
                    throw new Exception("Error en la base de datos");
                }
                else if((int)retorno.Value==1)
                {
                    throw new Exception("Actualizado correctamente");
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                cn.Close();
            }
        }


    }
}
