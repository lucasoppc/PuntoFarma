using System;
using System.Collections.Generic;
using System.Text;
using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaFarmaceutica
    {
        public static void Agregar(Farmaceutica f)
        {
            PersistenciaFarmaceutica.Agregar(f);
        }

        public static void Modificar(Farmaceutica f)
        {
            PersistenciaFarmaceutica.Modificar(f);
        }

        public static void Eliminar(Farmaceutica f)
        {
            PersistenciaFarmaceutica.Eliminar(f);
        }

        public static Farmaceutica Buscar(int ruc)
        {
           Farmaceutica farma =  PersistenciaFarmaceutica.Buscar(ruc);
            return farma;
        }

        public static List<Farmaceutica> Listar()
        {
            List<Farmaceutica> lista = PersistenciaFarmaceutica.Listar();
            return lista;
        }
    }
}
