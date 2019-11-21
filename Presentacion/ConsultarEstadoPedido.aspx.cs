using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class ConsultarEstadoPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            Pedido p = null;
            try
            {
                p = LogicaPedido.Buscar(Convert.ToInt32(txtNumero.Text));
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
            if (p != null)
            {
                lblError.Text = "El pedido está " + p.Estado;
            }
            else
            {
                lblError.Text = "El numero de pedido no existe";
            }
        }
    }
}