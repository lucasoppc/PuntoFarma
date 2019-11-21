using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using EntidadesCompartidas;
using System.Drawing;

namespace Presentacion
{
    public partial class CambioEstadoPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    List<Pedido> listapedidos = LogicaPedido.ListadoCompleto();
                    Session["listapedidos"] = listapedidos;
                    gvPedidos.DataSource = listapedidos;
                    gvPedidos.SelectedRowStyle.BackColor = Color.DarkSeaGreen;
                    gvPedidos.DataBind();
                }

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;

            }
        }

        protected void ActivarBtn()
        {
            btnSi.Enabled = true;
            btnNo.Enabled = true;
            btnSi.Visible = true;
            btnNo.Visible = true;
        }

        protected void DesactivarBtn()
        {
            btnSi.Enabled = false;
            btnNo.Enabled = false;
            btnSi.Visible = false;
            btnNo.Visible = false;
        }


        protected void btnSi_Click(object sender, EventArgs e)
        {
            try
            {
                Pedido p = (Pedido)Session["pedidoSeleccion"];
                this.DesactivarBtn();
                LogicaPedido.CambioEstado(p);
            }
            catch(Exception ex)
            {
                gvPedidos.DataSource = LogicaPedido.ListadoCompleto();
                gvPedidos.DataBind();
                lblError.Text = ex.Message;          
            }
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Text = "";
                this.DesactivarBtn();
                gvPedidos.DataSource = LogicaPedido.ListadoCompleto();
                gvPedidos.DataBind();
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                List<Pedido> listapedidos = LogicaPedido.ListadoCompleto();
                Pedido p = listapedidos[gvPedidos.SelectedIndex];
                Session["pedidoSeleccion"] = p;
                lblError.Text = "Desea cambiar el estado del pedido ?";
                this.ActivarBtn();
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}