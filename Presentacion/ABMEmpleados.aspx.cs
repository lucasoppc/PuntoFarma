using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using EntidadesCompartidas;

namespace Presentacion
{
    public partial class ABMEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<DateTime> horarios = new List<DateTime>();
                DateTime hora = new DateTime(2019, 01, 01, 23, 00, 00);
                for (int i = 1; i < 25; i++)
                {
                    horarios.Add(hora.AddHours(i));
                }
                ddlHoraInicio.DataSource = horarios;
                ddlHoraFin.DataSource = horarios;
                ddlHoraInicio.DataBind();
                ddlHoraFin.DataBind();

                this.DesactivarBM();
                this.DesactivarA();
            }
        }

        protected void ActivarBM()
        {
            btnEliminar.Enabled = true;
            btnModificar.Enabled = true;
        }
        protected void DesactivarBM()
        {
            btnEliminar.Enabled = false;
            btnModificar.Enabled = false;
        }
        protected void ActivarA()
        {
            btnAgregar.Enabled = true;
        }
        protected void DesactivarA()
        {
            btnAgregar.Enabled = false;
        }
        protected void Limpiar()
        {
            txtNombre.Text = "";
            txtApelldio.Text = "";
            txtContrasena.Text = "";          
        }


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            Empleado emp;
            try
            {               
                string nombreusuario = txtUsername.Text;
                string nombre = txtNombre.Text;
                string apelldio = txtApelldio.Text;
                string contrasena = txtContrasena.Text;
                DateTime horainicio = Convert.ToDateTime(ddlHoraInicio.SelectedValue);
                DateTime horafin = Convert.ToDateTime(ddlHoraFin.SelectedValue);

                emp = new Empleado(nombreusuario, contrasena, nombre, apelldio, horainicio, horafin);
                Session["empleado"] = emp;
                LogicaUsuario.Agregar(emp);
                

            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }

            this.DesactivarA();
            this.ActivarBM();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            try
            {
                Empleado emp = (Empleado)LogicaUsuario.Buscar(txtUsername.Text);

                if (emp != null)
                {
                    txtUsername.Text = emp.NombreLogueo;
                    txtNombre.Text = emp.Nombre;
                    txtApelldio.Text = emp.Apellido;
                    txtContrasena.Text = emp.Contrasena;
                    //ddlHoraInicio.SelectedValue = emp.HoraInicio.ToString(); Asi estaba antes pero si en la base de datos se no se ponia la fecha del sistema no matcheaban en el drop down list
                    ddlHoraInicio.SelectedIndex = Convert.ToInt32(emp.HoraInicio.Hour.ToString());
                    ddlHoraFin.SelectedIndex = Convert.ToInt32(emp.HoraFin.Hour.ToString());

                    Session["empleado"] = emp;
                    this.ActivarBM();
                    this.DesactivarA();
                }
                else
                {
                    lblError.Text = "No existe el nombre de usuario";
                    this.ActivarA();
                    this.Limpiar();
                    this.DesactivarBM();
                    Session["empleado"] = emp;
                }

            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            lblError.Text = "";

            try
            {
               
                Empleado emp = (Empleado)Session["empleado"];
                if(emp != null)
                {
                    emp.Nombre = txtNombre.Text;
                    emp.Apellido = txtApelldio.Text;
                    emp.Contrasena = txtContrasena.Text;
                    emp.HoraInicio = Convert.ToDateTime(ddlHoraInicio.SelectedValue);
                    emp.HoraFin = Convert.ToDateTime(ddlHoraFin.SelectedValue);

                    LogicaUsuario.Modificar(emp);
                }
                else
                {
                    lblError.Text = "No existe el empleado";
                }
                
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Empleado emp = (Empleado)Session["empleado"];

            try
            {
                LogicaUsuario.Eliminar(emp);
            }
            catch(Exception ex)
            {
                this.Limpiar();
                this.DesactivarBM();
                this.DesactivarA();
                lblError.Text = ex.Message;
            }
        }
    }
}