using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;
using Logica;

namespace Presentacion
{
    public partial class ABMMedicamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.DesactivoBotones();
            }
        }

        protected void Limpiar()
        {
            txtNombre.Text = "";
            txtCorreo.Text = "";
            txtDireccion.Text = "";
            lblError.Text = "";
        }

        protected void DesactivoBotones()
        {
            btnAgregar.Enabled = false;
            btnModificar.Enabled = false;
            btnEliminar.Enabled = false;
        }

        protected void ActivoBotonesAlta()
        {
            btnAgregar.Enabled = true;
            btnModificar.Enabled = false;
            btnEliminar.Enabled = false;
        }

        protected void ActivoBotonesBM()
        {
            btnAgregar.Enabled = false;
            btnModificar.Enabled = true;
            btnEliminar.Enabled = true;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Farmaceutica farma;
            if (txtRuc.Text.Trim().Length == 0)
            {
                this.Limpiar();
                lblError.Text = "El campo RUC no debe estar vacio";
                return;
            }

            try
            {
                farma = LogicaFarmaceutica.Buscar(Convert.ToInt32(txtRuc.Text.Trim()));

                if(farma != null)
                {
                    txtNombre.Text = farma.Nombre;
                    txtCorreo.Text = farma.Correo;
                    txtDireccion.Text = farma.Direccion;
                    Session["farmaceutica"] = farma;
                    this.ActivoBotonesBM();
                    lblError.Text = "";
                }
                else
                {
                    this.Limpiar();
                    lblError.Text = "No hay resultados para el RUC: " + txtRuc.Text;
                    this.ActivoBotonesAlta();
                }
            }
            catch(Exception ex)
            {
                lblError.Text = "Error! Ruc invalido";
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Farmaceutica farma;

            try
            {
                farma = new Farmaceutica(Convert.ToInt32(txtRuc.Text.Trim()), 
                    txtNombre.Text, txtDireccion.Text, txtCorreo.Text);

                if (farma != null)
                {
                    LogicaFarmaceutica.Agregar(farma);
                    Session["farmaceutica"] = farma;
                    this.ActivoBotonesBM();
                }
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            
            try
            {
                Farmaceutica farma = (Farmaceutica)Session["farmaceutica"];
                farma.Nombre = txtNombre.Text.Trim();
                farma.Correo = txtCorreo.Text.Trim();
                farma.Direccion = txtDireccion.Text.Trim();

                LogicaFarmaceutica.Modificar(farma);
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                Farmaceutica farma = (Farmaceutica)Session["farmaceutica"];

                LogicaFarmaceutica.Eliminar(farma);
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}