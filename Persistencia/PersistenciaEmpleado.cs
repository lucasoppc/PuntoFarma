using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using EntidadesCompartidas;

namespace Persistencia
{
    public class PersistenciaEmpleado
    {
        public static Empleado Logueo(string nombreUsuario,string contrasena)
        {
            Empleado e = null;
            string nombre;
            string apellido;
            DateTime horaInicio;
            DateTime horaFin;

            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("logueoempleado", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("nombreusuario", nombreUsuario);
            cmd.Parameters.AddWithValue("contrasena", contrasena);
             

            try
            {
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    reader.Read();
                    nombreUsuario = (string)reader["nombreusuario"];
                    contrasena = (string)reader["contrasena"];
                    nombre = (string)reader["nombre"];
                    apellido = (string)reader["apellido"];
                    horaInicio = (DateTime)reader["horainicio"];
                    horaFin = (DateTime)reader["horafin"];
                    e = new Empleado(nombreUsuario, contrasena, nombre,
                                        apellido, horaInicio, horaFin);
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
            return e;
        }

        public static void Agregar(Empleado e)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("agregarempleado", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.AddWithValue("nombreusuario", e.NombreLogueo);
            cmd.Parameters.AddWithValue("contrasena", e.Contrasena);
            cmd.Parameters.AddWithValue("nombre", e.Nombre);
            cmd.Parameters.AddWithValue("apellido", e.Apellido);
            cmd.Parameters.AddWithValue("horainicio", e.HoraInicio);
            cmd.Parameters.AddWithValue("horafin", e.HoraFin);
            cmd.Parameters.Add(retorno);

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
                    throw new Exception("El empleado ya existe");
                }
                else if((int)retorno.Value == -2)
                {
                    throw new Exception("El nombre de usuario pertenece a un cliente");
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

        public static void Modificar(Empleado e)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("modificarempleado", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter retorno = new SqlParameter("retorno", SqlDbType.Int);
            retorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.AddWithValue("nombreusuario", e.NombreLogueo);
            cmd.Parameters.AddWithValue("contrasena", e.Contrasena);
            cmd.Parameters.AddWithValue("nombre", e.Nombre);
            cmd.Parameters.AddWithValue("apellido", e.Apellido);
            cmd.Parameters.AddWithValue("horainicio", e.HoraInicio);
            cmd.Parameters.AddWithValue("horafin", e.HoraFin);
            cmd.Parameters.Add(retorno);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();

                if((int)retorno.Value == 1)
                {
                    throw new Exception("Modificado correctamente");
                }
                else if((int)retorno.Value == -1)
                {
                    throw new Exception("El empleado no existe");
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

        public static Empleado Buscar(string nombreUsuario)
        {
            Empleado e = null;
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("buscarempleado", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("nombreusuario", nombreUsuario);

            try
            {
                cn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if(reader.HasRows)
                {
                    reader.Read();
                    nombreUsuario = (string)reader["nombreusuario"];
                    string contrasena = (string)reader["contrasena"];
                    string nombre = (string)reader["nombre"];
                    string apellido = (string)reader["apellido"];
                    DateTime horainicio = (DateTime)reader["horainicio"];
                    DateTime horafin = (DateTime)reader["horafin"];

                    e = new Empleado(nombreUsuario, contrasena, nombre, apellido, horainicio, horafin);

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
            return e;

        }

        public static void Eliminar(Empleado e)
        {
            SqlConnection cn = new SqlConnection(Conexion.str);
            SqlCommand cmd = new SqlCommand("eliminarempleado", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("nombreusuario", e.NombreLogueo);
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
                    throw new Exception("El empleado no existe");
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
    }
}
