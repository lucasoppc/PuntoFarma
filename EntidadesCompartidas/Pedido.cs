using System;
using System.Collections.Generic;
using System.Text;

namespace EntidadesCompartidas
{
    public class Pedido
    {
        private int _numeroPedido;
        private Cliente _cliente;
        private Medicamento _medicamento;
        private int _cantidad;
        private string _estado;

        public int NumeroPedido
        {
            get { return _numeroPedido; }
            set { _numeroPedido = value; }
        }

        public Cliente Cliente
        {
            get { return _cliente; }
            set { _cliente = value; }
        }

        public Medicamento Medicamento
        {
            get { return _medicamento; }
            set { _medicamento = value; }
        }

        public int Cantidad
        {
            get { return _cantidad; }
            set { if (value >= 1)
                    _cantidad = value;
                else
                    throw new Exception("La cantidad solicitada debe ser igual o mayor a 1");
            }
        }

        public string Estado
        {
            get { return _estado; }
            set {
                if(value.Trim().ToUpper() == "GENERADO" || value.Trim().ToUpper() =="ENVIADO" || value.Trim().ToUpper()=="RECIBIDO")
                {
                    _estado = value.Trim().ToUpper();
                }
                else
                {
                    throw new Exception("Estado de pedido invalido");
                }
            }
        }

        public Pedido(int pNumeroPedido,Cliente pCliente,Medicamento pMedicamento,int pCantidad,string pEstado)
        {
            NumeroPedido = pNumeroPedido;
            Cliente = pCliente;
            Medicamento = pMedicamento;
            Cantidad = pCantidad;
            Estado = pEstado;
        }

        public override string ToString()
        {
            return " Num. de Pedido: " + NumeroPedido+"\n"+ 
                   " Medicamento: "+Medicamento.Nombre+"\n"+ 
                   " Proveedor: "+Medicamento.Proveedor.Nombre +"\n"+
                   " Cliente: "+Cliente.Nombre+"\n"+
                   " Estado: " + Estado;
        }
    }
}
