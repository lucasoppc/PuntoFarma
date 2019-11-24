using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using EntidadesCompartidas;

namespace Persistencia
{
    public class PersistenciaFarmaceutica
    {
        public static void Agregar(Farmaceutica f)
        {
            SqlConnection cnn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("agregarfarmaceutica", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("ruc", f.Ruc);
            cmd.Parameters.AddWithValue("nombre", f.Nombre);
            cmd.Parameters.AddWithValue("correo", f.Correo);
            cmd.Parameters.AddWithValue("direccion", f.Direccion);
            
            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();

                if((int)retorno.Value == 1)
                {
                    throw new Exception("Agregado correctamente");
                }
                else if((int)retorno.Value == -1)
                {
                    throw new Exception("Ya existe una farmaceutica con ese RUC");
                }
                else
                {
                    throw new Exception("Error en la Base de Datos");
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                cnn.Close();
            }

        }

        public static void Modificar(Farmaceutica f)
        {
            SqlConnection cnn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("modificarfarmaceutica", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("ruc", f.Ruc);
            cmd.Parameters.AddWithValue("nombre", f.Nombre);
            cmd.Parameters.AddWithValue("correo", f.Correo);
            cmd.Parameters.AddWithValue("direccion", f.Direccion);
            

            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();

                if ((int)retorno.Value == 1)
                {
                    throw new Exception("Modificado correctamente");
                }
                else if ((int)retorno.Value == -1)
                {
                    throw new Exception("No existe una farmaceutica con ese RUC");
                }
                else
                {
                    throw new Exception("Error en la Base de Datos");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cnn.Close();
            }
        }

        public static void Eliminar(Farmaceutica f)
        {
            SqlConnection cnn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("eliminarfarmaceutica", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("ruc", f.Ruc);

            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();

                if ((int)retorno.Value == 1)
                {
                    throw new Exception("Eliminado correctamente");
                }
                else if ((int)retorno.Value == -1)
                {
                    throw new Exception("Hay pedidos asociados a esta farmaceutica, no se elimina");
                }
                else
                {
                    throw new Exception("Error en la Base de Datos");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cnn.Close();
            }
        }

        public static Farmaceutica Buscar(int ruc)
        {
            Farmaceutica farma = null;
            SqlConnection cnn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("buscarfarmaceutica", cnn);
            cmd.CommandType = CommandType.StoredProcedure;          
            cmd.Parameters.AddWithValue("ruc", ruc);
            SqlDataReader reader;

            try
            {
                cnn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    ruc = (int)reader["ruc"];
                    string nombre = (string)reader["nombre"];                   
                    string direccion = (string)reader["direccion"];
                    string correo = (string)reader["correo"];

                    farma = new Farmaceutica(ruc, nombre, direccion, correo);
                }
               
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cnn.Close();
            }
            return farma;
        }

        public static List<Farmaceutica> Listar()
        {
            Farmaceutica farma = null;
            List<Farmaceutica> lista = new List<Farmaceutica>();
            SqlConnection cnn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("listarfarmaceuticas", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader;

            try
            {
                cnn.Open();
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        int ruc = (int)reader["ruc"];
                        string nombre = (string)reader["nombre"];
                        string correo = (string)reader["correo"];
                        string direccion = (string)reader["direccion"];

                        farma = new Farmaceutica(ruc, nombre, direccion, correo);
                        lista.Add(farma);
                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cnn.Close();
            }
            return lista;
        }
    }
}
