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
            set {_ruc = value;}
        }

        public string Nombre
        {
            get { return _nombre; }
            set {
                if(value.Trim().Length <= 20 && value.Length >= 3)
                {
                    _nombre = value.ToUpper();
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
                if (value.Trim().Length <= 50 && value.Trim().Length >= 3)
                {
                    _direccion = value.Trim().ToUpper();
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
                if (value.Trim().Length <= 50 && value.Trim().Length >= 3)
                {
                    if (value.Contains("@") && value.Contains(".com"))
                    {
                        _correo = value;
                    }
                    else
                    {
                        throw new Exception("Error! correo invalido");
                    }
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
