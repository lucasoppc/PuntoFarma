using System;
using System.Collections.Generic;
using System.Text;
using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaMedicamento
    {
        public static Medicamento Buscar(int codigo, int ruc)
        {
            Medicamento med = PersistenciaMedicamento.Buscar(codigo,ruc);

            return med;
        }

        public static void Agregar(Medicamento m)
        {
            PersistenciaMedicamento.Agregar(m);
        }

        public static void Modificar(Medicamento m)
        {
            PersistenciaMedicamento.Modificar(m);
        }

        public static void Eliminar(Medicamento m)
        {
            PersistenciaMedicamento.Eliminar(m);
        }

        public static List<Medicamento> Listar(Farmaceutica f)
        {
            List<Medicamento> listMed = PersistenciaMedicamento.Listar(f);
            return listMed;
        }

        public static List<Medicamento> Listar()
        {
            List<Medicamento> lista = PersistenciaMedicamento.Listar();
            return lista;
        }
    }
}
