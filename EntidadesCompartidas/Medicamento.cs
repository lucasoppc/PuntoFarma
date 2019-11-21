using System;
using System.Collections.Generic;
using System.Text;

namespace EntidadesCompartidas
{
    public class Medicamento
    {
        private int _codigo;
        private Farmaceutica _proveedor;
        private string _nombre;
        private string _descripcion;
        private double _precio;

        public int Codigo
        {
            get { return _codigo; }
            set { _codigo = value; }
        }

        public Farmaceutica Proveedor
        {
            get { return _proveedor; }
            set { _proveedor = value; }
        }

        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        public string Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }

        public double Precio
        {
            get { return _precio; }
            set { _precio = value; }
        }

        public Medicamento(int pCodigo,Farmaceutica pProveedor,string pNombre,string pDescripcion,double pPrecio)
        {
            Codigo = pCodigo;
            Proveedor = pProveedor;
            Nombre = pNombre;
            Descripcion = pDescripcion;
            Precio = pPrecio;
        }

        public override string ToString()
        {
            return "Cod: " + Codigo + " " + Nombre + " $" + Precio.ToString();
        }

        public string NombreProveedor()
        {
            return Proveedor.Nombre;
        }
    }
}
