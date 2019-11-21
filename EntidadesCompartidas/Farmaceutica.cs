using System;
using System.Collections.Generic;
using System.Text;

namespace EntidadesCompartidas
{
    public class Farmaceutica
    {
        private int _ruc;
        private string _nombre;
        private string _direccion;
        private string _correo;

        public int Ruc
        {
            get { return _ruc; }
            set { _ruc = value; }
        }

        public string Nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        public string Direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }

        public string Correo
        {
            get { return _correo; }
            set { _correo = value; }
        }

        public Farmaceutica(int pRuc, string pNombre, string pDireccion, string pCorreo)
        {
            Ruc = pRuc;
            Nombre = pNombre;
            Direccion = pDireccion;
            Correo = pCorreo;
        }

        public override string ToString()
        {
            return Nombre + Ruc.ToString();
        }
        

        
    }
}
