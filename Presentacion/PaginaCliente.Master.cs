using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class PaginaCliente : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                Cliente c;
                c = (Cliente)Session["usuario"];              
                if (!(c is Cliente))
                {
                    Response.Redirect("Logueo.aspx");
                }
                else
                {
                    lblUsuario.Text = c.Nombre + " " + c.Apellido;
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