using System;
using System.Collections.Generic;
using System.Text;
using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaUsuario
    {
        public static Usuario Logueo(string nombreUsuario,string contrasena)
        {
            Usuario user = null;

            user = PersistenciaEmpleado.Logueo(nombreUsuario, contrasena);

            if (user == null)
            {
                user = PersistenciaCliente.Logueo(nombreUsuario,contrasena);
            }

            return user;
        }

        public static void Agregar(Usuario u)
        {
            if (u is Cliente)
            {
                PersistenciaCliente.Agregar((Cliente)u);
            }
            else if (u is Empleado)
            {
                PersistenciaEmpleado.Agregar((Empleado)u);
            }
        }

        public static Usuario Buscar(string nombreUsuario)
        {         
            Usuario e = PersistenciaEmpleado.Buscar(nombreUsuario);
            if(e == null)
            {
                e = PersistenciaCliente.Buscar(nombreUsuario);
                return e;
            }
            else
            {
                return e;
            }
        }

        public static void Modificar(Empleado e)
        {
            PersistenciaEmpleado.Modificar(e);
        }

        public static void Eliminar(Empleado e)
        {
            PersistenciaEmpleado.Eliminar(e);
        }

    }
}
