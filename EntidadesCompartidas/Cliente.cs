using System;
using System.Collections.Generic;
using System.Text;

namespace EntidadesCompartidas
{
    public class Cliente:Usuario
    {
        private string _direccion;
        private int _telefono;

        public string Direccion
        {
            get { return _direccion; }
            set
            {
                if(value.Trim().Length <= 50 && value.Trim().Length >= 3)
                {
                    _direccion = value;
                }
                else
                {
                    throw new Exception("La direccion debe tener entre 3 y 50 caracteres");
                }
            }
        }

        public int Telefono
        {
            get { return _telefono; }
            set
            {
                if(value.ToString().Trim().Length > 7)
                {
                    _telefono = value;
                }
                else
                {
                    throw new Exception("Telefono no valido, ej:(091234567)");
                }
            }
        }

        public Cliente(string pNomLogueo, string pContrasena, string pNombre, string pApellido, string pDireccion,int pTelefono)
            :base(pNomLogueo,pContrasena,pNombre,pApellido)
        {
            Direccion = pDireccion;
            Telefono = pTelefono;
        }

        public override string ToString()
        {
            return base.ToString() + " Dir: " + Direccion + " Tel: " + Telefono.ToString().Insert(0,"0") ;
        }
    }
}
