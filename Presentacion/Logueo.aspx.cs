using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class Logueo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Usuario"] = null;

        }

        protected void btnLogueo_Click(object sender, EventArgs e)
        {
            try
            {
               Usuario user;
               user = LogicaUsuario.Logueo(txtNombreUsuario.Text.Trim(), txtContraseña.Text.Trim());
                if (user != null)
                {
                    Session["Usuario"] = user;

                    if (user is EntidadesCompartidas.Empleado)

                    {
                        Response.Redirect("BienvenidaEmpleados.aspx");
                    }
                    else if (user is EntidadesCompartidas.Cliente)
                    {
                        Response.Redirect("RealizarPedido.aspx");
                    }

                }
                lblError.Text = "Datos no validos";
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnAltaCliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RegistroCliente.aspx");
        }
    }
}