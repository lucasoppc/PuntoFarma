using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class PaginaEmpleado : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Empleado emp;
                emp = (Empleado)Session["usuario"];
                if (!(emp is Empleado))
                {
                    Response.Redirect("Logueo.aspx");
                }
                else
                {
                    lblUsuario.Text = emp.Nombre + " " + emp.Apellido;
                }
            }
            catch
            {
                Response.Redirect("Logueo.aspx");
            } 
        }


        protected void btnLogOut_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Logueo.aspx");
        }
    }
}