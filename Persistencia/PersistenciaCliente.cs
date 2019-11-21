using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using EntidadesCompartidas;

namespace Persistencia
{
    public class PersistenciaCliente
    {
        public static Cliente Logueo(string nombreUsuario,string contrasena)
        {
            Cliente c = null;
            string nombre;
            string apellido;
            string direccion;
            int telefono;
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("logueocliente", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("nombreusuario", nombreUsuario);
            cmd.Parameters.AddWithValue("contrasena", contrasena);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    reader.Read();
                    nombreUsuario = (string)reader["nombreusuario"];
                    contrasena = (string)reader["contrasena"];
                    nombre = (string)reader["nombre"];
                    apellido = (string)reader["apellido"];
                    direccion = (string)reader["direccion"];
                    telefono = (int)reader["telefono"];

                    c = new Cliente(nombreUsuario, contrasena, nombre, apellido, direccion, telefono);
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
            return c;

        }

        public static void Agregar(Cliente c)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("agregarcliente", cn);
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(retorno);
            cmd.Parameters.AddWithValue("nombreusuario", c.NombreLogueo);
            cmd.Parameters.AddWithValue("contrasena", c.Contrasena);
            cmd.Parameters.AddWithValue("nombre", c.Nombre);
            cmd.Parameters.AddWithValue("apellido", c.Apellido);
            cmd.Parameters.AddWithValue("direccion", c.Direccion);
            cmd.Parameters.AddWithValue("telefono", c.Telefono);

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
                    throw new Exception("El Cliente ya existe");
                }
                else if((int)retorno.Value == -2)
                {
                    throw new Exception("Ya existe el nombre de usuario ingresado");
                }
                else if((int)retorno.Value == -3)
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

        public static Cliente Buscar(string nombreUsuario)
        {
            Cliente c = null;
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("buscarcliente", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("nombreusuario", nombreUsuario);
            SqlDataReader reader;

            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    reader.Read();
                    nombreUsuario = (string)reader["nombreusuario"];
                    string contrasena = (string)reader["contrasena"];
                    string nombre = (string)reader["nombre"];
                    string apellido = (string)reader["apellido"];
                    string direccion = (string)reader["direccion"];
                    int telefono = (int)reader["telefono"];
                    c = new Cliente(nombreUsuario, contrasena, nombre, apellido, direccion, telefono);
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
            return c;
        }
    }
}
