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
            set {
                try
                {
                    _ruc = Convert.ToInt32(value);
                }
                catch
                {
                    throw new Exception("Error! Ruc no valido, inserte un numero");
                }
            }
        }

        public string Nombre
        {
            get { return _nombre; }
            set {
                if(value.Length < 21 && value.Length > 3)
                {
                    _nombre = value;
                }
                else
                {
                    throw new Exception("Error! el nombre debe tener entre 3 y 20 caracteres");
                }
            }
        }

        public string Direccion
        {
            get { return _direccion; }
            set {
                if (value.Length < 50 && value.Length > 3)
                {
                    _direccion = value;
                }
                else
                {
                    throw new Exception("Error! la direccion debe tener entre 3 y 50 caracteres");
                }
            }
        }

        public string Correo
        {
            get { return _correo; }
            set {
                if (value.Length < 51 && value.Length > 3)
                {
                    _nombre = value;
                }
                else
                {
                    throw new Exception("Error! el correo debe tener entre 3 y 50 caracteres");
                }
            }
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
