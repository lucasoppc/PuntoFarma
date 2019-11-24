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
            set {
                if(value.Trim().Length <= 50 && value.Trim().Length >= 3)
                {
                    _nombre = value.Trim().ToUpper();
                }
                else
                {
                    throw new Exception("Error! el nombre debe tener entre 3 y 50 caracteres");
                }
            }
        }

        public string Descripcion
        {
            get { return _descripcion; }
            set {
                if (value.Trim().Length <= 100 && value.Trim().Length >= 3)
                {
                    _descripcion = value.Trim();
                }
                else
                {
                    throw new Exception("Error! el nombre debe tener entre 3 y 100 caracteres");
                }
            }
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
