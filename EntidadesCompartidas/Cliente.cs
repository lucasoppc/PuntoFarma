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
            set { _direccion = value; }
        }

        public int Telefono
        {
            get { return _telefono; }
            set { _telefono = value; }
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
