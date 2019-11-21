using System;
using System.Collections.Generic;
using System.Text;
using EntidadesCompartidas;
using System.Data;
using System.Data.SqlClient;

namespace Persistencia
{
    public class PersistenciaMedicamento
    {
        public static void Agregar(Medicamento m)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("agregarmedicamento",cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("codigo", m.Codigo);
            cmd.Parameters.AddWithValue("nombre", m.Nombre);
            cmd.Parameters.AddWithValue("descripcion", m.Descripcion);
            cmd.Parameters.AddWithValue("precio", m.Precio);
            cmd.Parameters.AddWithValue("ruc", m.Proveedor.Ruc);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();

                if((int)retorno.Value == 1)
                {
                    throw new Exception("Agregado correctamente");
                }
                else if((int)retorno.Value == -1)
                {
                    throw new Exception("El medicamento ya existe");
                }
                else if((int)retorno.Value ==-2)
                {
                    throw new Exception("Error en la base de datos");
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

        public static void Modificar(Medicamento m)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("modificarmedicamento", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("codigo", m.Codigo);
            cmd.Parameters.AddWithValue("nombre", m.Nombre);
            cmd.Parameters.AddWithValue("descripcion", m.Descripcion);
            cmd.Parameters.AddWithValue("precio", m.Precio);
            cmd.Parameters.AddWithValue("ruc", m.Proveedor.Ruc);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();

                if ((int)retorno.Value == 1)
                {
                    throw new Exception("Modificado correctamente");
                }
                else if ((int)retorno.Value == -1)
                {
                    throw new Exception("El medicamento no existe");
                }
                else if ((int)retorno.Value == -2)
                {
                    throw new Exception("Error en la base de datos");
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
        }

        public static Medicamento Buscar(int codigo, int ruc)
        {
            Medicamento m = null;
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("buscarmedicamento", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("codigo", codigo);
            cmd.Parameters.AddWithValue("ruc", ruc);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    reader.Read();
                    codigo = (int)reader["codigo"];
                    string nombre = (string)reader["nombre"];
                    string desc = (string)reader["descripcion"];
                    ruc = (int)reader["ruc"];
                    double precio = (double)reader["precio"];

                    Farmaceutica farma = PersistenciaFarmaceutica.Buscar(ruc);
                    m = new Medicamento(codigo, farma, nombre, desc, precio);
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
            return m;
        }

        public static void Eliminar(Medicamento m)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("eliminarmedicamento", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("codigo", m.Codigo);
            cmd.Parameters.AddWithValue("ruc", m.Proveedor.Ruc);
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);

            try
            {
                cn.Open();
                    cmd.ExecuteNonQuery();

                    if((int)retorno.Value == 1)
                    {
                        throw new Exception("Eliminado correctamente");
                    }
                    else if((int)retorno.Value == -1)
                    {
                        throw new Exception("El medicamento no existe");
                    }
                    else if((int)retorno.Value == -2)
                    {
                        throw new Exception("Error en la base de datos");
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

        public static List<Medicamento> Listar(Farmaceutica f)
        {
            List<Medicamento> listMed = new List<Medicamento>();
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listarmedicamentos", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ruc", f.Ruc);
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
                        string nombre = (string)reader["nombre"];
                        string desc = (string)reader["descripcion"];
                        double precio = (double)reader["precio"];

                        Medicamento m = new Medicamento(codigo, f, nombre, desc, precio);
                        listMed.Add(m);
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
            return listMed;
        }

        public static List<Medicamento> Listar()
        {
            List<Medicamento> listMed = new List<Medicamento>();
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listamedicamentos", cn);
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
                        int codigo = (int)reader["codigo"];
                        int ruc = (int)reader["ruc"];
                        string nombre = (string)reader["nombre"];
                        string desc = (string)reader["descripcion"];
                        double precio = (double)reader["precio"];
                        Farmaceutica f = PersistenciaFarmaceutica.Buscar(ruc);
                        Medicamento m = new Medicamento(codigo, f, nombre, desc, precio);
                        listMed.Add(m);
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
            return listMed;
        }
    }
}
