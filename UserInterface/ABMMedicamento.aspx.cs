﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;
using Logica;

namespace Presentacion
{
    public partial class ABMMedicamento1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Limpiar()
        {
            txtRuc.Text = "";
            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtPrecio.Text = "";
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
            try
            {
                Medicamento m = null;

                m = LogicaMedicamento.Buscar(Convert.ToInt32(txtCodigo.Text.Trim()),Convert.ToInt32(txtRuc.Text.Trim()));

                if (m != null)
                {
                    txtNombre.Text = m.Nombre;
                    txtDescripcion.Text = m.Descripcion;
                    txtRuc.Text = m.Proveedor.Ruc.ToString();
                    txtPrecio.Text = m.Precio.ToString();
                    Session["medicamento"] = m;
                }
                else
                {
                    lblError.Text="No existe el medicamento";
                    this.ActivoBotonesAlta();

                }
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            { 
              
                int Codigo = Convert.ToInt32(txtCodigo.Text);
                Farmaceutica Proveedor = LogicaFarmaceutica.Buscar(Convert.ToInt32(txtRuc.Text));
                string Nombre = txtNombre.Text.Trim();
                string Descripcion = txtDescripcion.Text;
                double Precio = Convert.ToDouble(txtPrecio.Text);

                Medicamento m = new Medicamento(Codigo, Proveedor, Nombre, Descripcion, Precio);

                if (m != null)
                {
                    LogicaMedicamento.Agregar(m);
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
                Medicamento m = (Medicamento)Session["medicamento"];

                m.Nombre = txtNombre.Text.Trim();
                m.Descripcion = txtDescripcion.Text;
                m.Precio = Convert.ToDouble(txtPrecio.Text);

                LogicaMedicamento.Modificar(m);
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                Medicamento m = null;
                m = (Medicamento)Session["medicamento"];

                LogicaMedicamento.Eliminar(m);
                this.Limpiar();
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}