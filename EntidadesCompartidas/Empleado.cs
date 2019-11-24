using System;
using System.Collections.Generic;
using System.Text;

namespace EntidadesCompartidas
{
    public class Empleado:Usuario
    {
        private DateTime _horaInicio;
        private DateTime _horaFin;

        public DateTime HoraInicio
        {
            get { return _horaInicio; }
            set { _horaInicio = value;}
        }

        public DateTime HoraFin
        {
            get { return _horaFin; }
            set
            {
                if(value > HoraInicio)
                {
                    _horaFin = value;
                }
                else
                {
                    throw new Exception("Error!  Hora de fin anterior a hora de inicio");
                }
            }
        }

        public Empleado(string pNomLogueo, string pContrasena,string pNombre, string pApellido,DateTime pHoraInicio,DateTime pHoraFin)
            :base(pNomLogueo,pContrasena,pNombre,pApellido)
        {
            HoraInicio = pHoraInicio;
            HoraFin = pHoraFin;
        }

        public override string ToString()
        {
            return "Empleado: " + base.ToString() + " " + "Horario: " + HoraInicio.ToString() + "hs a " + HoraFin.ToString()+"hs" ;
        }
    }
}
