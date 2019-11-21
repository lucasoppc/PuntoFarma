using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;
using Logica;

namespace Presentacion
{
    public partial class ListadoMedicamentosPedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    ddlFarmaceuticas.DataSource = LogicaFarmaceutica.Listar();
                    ddlFarmaceuticas.DataTextField = "Nombre";
                    ddlFarmaceuticas.DataValueField = "Ruc";
                    ddlFarmaceuticas.AutoPostBack = true;
                    ddlFarmaceuticas.DataBind();

                    Farmaceutica f = LogicaFarmaceutica.Buscar(Convert.ToInt32(ddlFarmaceuticas.SelectedValue));
                    List<Medicamento> lista = LogicaMedicamento.Listar(f);
                    Session["listamed"] = lista;
                    gvMedicamentos.DataSource = lista;
                    gvMedicamentos.DataBind();
                }

                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }

        protected void ddlFarmaceuticas_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Farmaceutica f = LogicaFarmaceutica.Buscar(Convert.ToInt32(ddlFarmaceuticas.SelectedValue));
                List<Medicamento> lista = LogicaMedicamento.Listar(f);
                Session["listamed"] = lista;
                gvMedicamentos.DataSource = lista;
                gvMedicamentos.DataBind();
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void gvMedicamentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                List<Medicamento> lista = (List<Medicamento>)Session["listamed"];
                Medicamento m = lista[gvMedicamentos.SelectedIndex];
                Session["medicamento"] = m;
                List<Pedido> listatodos = LogicaPedido.ListarTodos(m);

                lstPedidos.Items.Clear();
                for (int i = 0; i < listatodos.Count; i++)
                {
                    lstPedidos.Items.Add(listatodos[i].ToString());
                }
                lstPedidos.DataBind();
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void ddlFiltro_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Medicamento m = (Medicamento)Session["medicamento"];
                List<Pedido> listaentregados = LogicaPedido.ListarEntregados(m);
                List<Pedido> listagenerados = LogicaPedido.ListarGenerados(m);
                List<Pedido> listatodos = LogicaPedido.ListarTodos(m);

                if (ddlFiltro.SelectedValue == "Todos")
                {
                    lstPedidos.Items.Clear();
                    for (int i = 0; i < listatodos.Count; i++)
                    {
                        lstPedidos.Items.Add(listatodos[i].ToString());
                    }
                    lstPedidos.DataBind();
                }
                else if (ddlFiltro.SelectedValue == "Generados")
                {
                    lstPedidos.Items.Clear();
                    for (int i = 0; i < listagenerados.Count; i++)
                    {
                        lstPedidos.Items.Add(listagenerados[i].ToString());
                    }
                    lstPedidos.DataBind();
                }
                else if (ddlFiltro.SelectedValue == "Entregados")
                {
                    lstPedidos.Items.Clear();
                    for (int i = 0; i < listaentregados.Count; i++)
                    {
                        lstPedidos.Items.Add(listaentregados[i].ToString());
                    }
                    lstPedidos.DataBind();
                }
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void lstPedidos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}