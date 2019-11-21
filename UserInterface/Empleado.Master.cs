using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class Empleado : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!(Session["Usuario"] is EntidadesCompartidas.Empleado))
                {
                    Response.Redirect("Logueo.aspx");
                }
            }
            catch
            {
                Response.Redirect("Logueo.aspx");
            } 
        }

        protected void imgLogOut_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Logueo.aspx");
        }

        

        
    }
}