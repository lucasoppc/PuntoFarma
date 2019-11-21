using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class BienvenidaEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Empleado emp = (Empleado)Session["Usuario"];
            lblBienvenido.Text = "BIENVENID@ " + emp.Nombre + "!";

            lblHorario.Text = "Tu horario es de: " + emp.HoraInicio.ToShortTimeString() +
                "    a    " + emp.HoraFin.ToShortTimeString();
        }
    }
}