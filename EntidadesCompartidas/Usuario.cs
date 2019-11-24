using System;
using System.Collections.Generic;
using System.Text;

namespace EntidadesCompartidas
{
    public abstract class Usuario
    {
        //atributos
        private string _nombreLogueo;
        private string _contrasena;
        private string _nombre;
        private string _apellido;

        public string NombreLogueo
        {
            get {return _nombreLogueo; }

            set {
                if(value.Trim() != "")
                {
                    if(value.Trim().Length <= 20 && value.Trim().Length >= 1)
                    {
                        _nombreLogueo = value.Trim();
                    }
                    else
                    {
                        throw new Exception("Error! El nombre de usuario debe tener entre 1 y 20 caracteres");
                    }
                }
                else
                {
                    throw new Exception("Error! El nombre de usuario no puede estar vacio");
                }
            }
        }

        public string Contrasena
        {
            get { return _contrasena; }

            set {
                if(value.Trim() != "")
                {
                    if(value.Trim().Length >= 4 && value.Trim().Length <= 20)
                    {
                        _contrasena = value.Trim();
                    }
                    else
                    {
                        throw new Exception("Error! La contrasena debe entre 4 y 20 caracteres");
                    }
                }
                else
                {
                    throw new Exception("Error! El campo contrasena no puede estar vacio");
                }
            }
        }

        public string Nombre
        {
            get { return _nombre; }

            set {
                if(value.Trim() != "")
                {
                    if (value.Trim().Length <= 20 && value.Trim().Length >= 3)
                    {
                        _nombre = value.Trim();
                    }
                    else
                    {
                        throw new Exception("Error! El nombre debe tener entre 3 y 20 caracteres");
                    }
                }
                else
                {
                    throw new Exception("Error! El nombre no puede estar vacio");
                }
            }
        }

        public string Apellido
        {
            get { return _apellido; }
            set {
                if (value.Trim() != "")
                {
                    if (value.Trim().Length <= 20 && value.Trim().Length >= 3)
                    {
                        _apellido = value.Trim();
                    }
                    else
                    {
                        throw new Exception("Error! El apellido debe tener entre 3 y 20 caracteres");
                    }
                }
                else
                {
                    throw new Exception("Error! El apellido no puede estar vacio");
                }
            }
        }

        public Usuario(string pNomLogueo,string pContrasena,string pNombre,string pApellido)
        {
            NombreLogueo = pNomLogueo;
            Contrasena = pContrasena;
            Nombre = pNombre;
            Apellido = pApellido;
        }

        public override string ToString()
        {
            return Nombre + " " + Apellido;
        }

    }
}
