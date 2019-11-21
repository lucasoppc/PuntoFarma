using System;
using System.Collections.Generic;
using System.Text;
using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaPedido
    {
        public static void Agregar(Pedido p)
        {
            PersistenciaPedido.Agregar(p);
        }

        public static Pedido Buscar(int numero)
        {
            Pedido p = PersistenciaPedido.Buscar(numero);

            return p;
        }

        public static void Eliminar(Pedido p)
        {
            PersistenciaPedido.Eliminar(p);
        }

        public static List<Pedido> Listar(Cliente c)
        {
            List<Pedido> lista = PersistenciaPedido.Listar(c);
            return lista;
        }

        public static List<Pedido> ListarGenerados(Medicamento m)
        {
            List<Pedido> lista = PersistenciaPedido.ListarGenerados(m);
            return lista;
        }

        public static List<Pedido> ListarEntregados(Medicamento m)
        {
            List<Pedido> lista = PersistenciaPedido.ListarEntregados(m);
            return lista;
        }

        public static List<Pedido> ListarTodos(Medicamento m)
        {
            List<Pedido> lista = PersistenciaPedido.ListarTodos(m);
            return lista;
        }

        public static List<Pedido> ListadoCompleto()
        {
            List<Pedido> lista = PersistenciaPedido.ListadoCompleto();
            return lista;
        }

        public static void CambioEstado(Pedido p)
        {
            PersistenciaPedido.CambioEstado(p);
        }
    }
}
