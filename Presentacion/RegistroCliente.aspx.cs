using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntidadesCompartidas;
using Logica;

namespace Presentacion
{
    public partial class RegistroCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente c = null;

                string nombreusuario = txtUsername.Text;
                string contrasena = txtContraseña.Text;
                string nombre = txtNombre.Text;
                string apellido = txtApellido.Text;
                string direccion = txtDireccion.Text;
                int telefono = Convert.ToInt32(txtTelefono.Text);

                c = new Cliente(nombreusuario, contrasena, nombre, apellido, direccion, telefono);
                LogicaUsuario.Agregar(c);
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
                ImageButton1.Enabled = true;
                ImageButton1.Visible = true;
            }
        }
    }
}