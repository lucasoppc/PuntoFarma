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
    public partial class RealizarPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                List<Medicamento> lista = new List<Medicamento>();
                try
                {
                    lista = LogicaMedicamento.Listar();
                    Session["listamedicamentos"] = lista;
                    gvMedicamentos.DataSource = lista;
                    gvMedicamentos.SelectedRowStyle.BackColor = Color.LightSeaGreen;
                    gvMedicamentos.DataBind();
                }
                catch(Exception ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }

        protected void gvMedicamentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<Medicamento> lista = (List<Medicamento>)Session["listamedicamentos"];
            try
            {
                Medicamento m = (Medicamento)lista[gvMedicamentos.SelectedIndex];
                Session["medicamento"] = m;
                txtbxMed.Text ="Codigo: " + m.Codigo +"\n"+ m.Nombre + 
                    "\n" + m.Descripcion + "\n" +"Farmaceutica: "+ m.Proveedor.Nombre + "\n" +"Precio: $"+ m.Precio;


                lblError.Text = "";
                lblPrecio.Text = m.Precio.ToString();
                lblCantidad.Text = "1";
                btnMas.Enabled = true;
                btnMenos.Enabled = true;
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnMas_Click(object sender, EventArgs e)
        {
            try
            {
                int cantidad = 1;
                cantidad = Convert.ToInt32(lblCantidad.Text);

                if (cantidad >= 1)
                {
                    List<Medicamento> lista = (List<Medicamento>)Session["listamedicamentos"];
                    Medicamento m = (Medicamento)lista[gvMedicamentos.SelectedIndex];

                    cantidad++;
                    lblCantidad.Text = Convert.ToString(cantidad);
                    lblPrecio.Text = Convert.ToString(cantidad * m.Precio);
                }
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnMenos_Click(object sender, EventArgs e)
        {
            int cantidad = 1;
            cantidad = Convert.ToInt32(lblCantidad.Text);

            if (cantidad > 1)
            {
                try
                {
                    List<Medicamento> lista = (List<Medicamento>)Session["listamedicamentos"];
                    Medicamento m = (Medicamento)lista[gvMedicamentos.SelectedIndex];

                    cantidad--;
                    lblCantidad.Text = Convert.ToString(cantidad);
                    lblPrecio.Text = Convert.ToString(cantidad * m.Precio);
                }
                catch(Exception ex)
                {
                   lblError.Text=ex.Message;
                }
            }
        }

        protected void btnPedir_Click(object sender, EventArgs e)
        {
            Pedido p;
            Medicamento m = (Medicamento)Session["medicamento"];
            Cliente c = (Cliente)Session["usuario"];
            try
            {
                p = new Pedido(0, c, m, Convert.ToInt32(lblCantidad.Text), "");
                LogicaPedido.Agregar(p);
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}