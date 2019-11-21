using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class MisPedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                try
                {
                    Cliente c = (Cliente)Session["usuario"];
                    Session["listapedidos"] = LogicaPedido.Listar(c);
                    gvPedidos.DataSource = Session["listapedidos"];
                    gvPedidos.DataBind();
                }
                catch(Exception ex)
                {
                    lblConfirmacion.Text = ex.Message;
                }
        }

        protected void gvPedidos_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblConfirmacion.Text = "";
            try
            {
                List<Pedido> listapedidos = (List<Pedido>)Session["listapedidos"];
                Pedido p = listapedidos[gvPedidos.SelectedIndex];

                txtPedido.Text = "Pedido Generado" + "\n" +
                    "Numero: " + p.NumeroPedido.ToString() + "\n" +
                    "Cliente: " + p.Cliente.Nombre + "\n" +
                    "Medicamento: " + p.Medicamento.Nombre + "\n" +
                    "Proveedor: " + p.Medicamento.Proveedor + "\n" +
                    "Precio: " + p.Medicamento.Precio.ToString() + "\n" +
                    "Cantidad: " + p.Cantidad.ToString() + "\n" +
                    "Total Pago: $" + p.Medicamento.Precio * p.Cantidad;

                btnEliminar.Enabled = true;
                btnEliminar.Visible = true;
            }
            catch(Exception ex)
            {
                lblConfirmacion.Text = ex.Message;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            lblConfirmacion.Text = "";
            try
            {
                List<Pedido> listapedidos = (List<Pedido>)Session["listapedidos"];
                Pedido p = listapedidos[gvPedidos.SelectedIndex];
                
                listapedidos.RemoveAt(gvPedidos.SelectedIndex);
                Session["listapedidos"] = listapedidos;
                gvPedidos.DataBind();
                btnEliminar.Enabled = false;
                btnEliminar.Visible = false;

                LogicaPedido.Eliminar(p);
            }
            catch (Exception ex)
            {
                lblConfirmacion.Text = ex.Message;
            }
        }
    }
}