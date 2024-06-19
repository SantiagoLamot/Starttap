using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using Microsoft.Win32;

namespace Vistas
{
    
    public partial class AgregarEmpleado : System.Web.UI.Page
    {
        RegistroEmpleado registroEmpleado = new RegistroEmpleado();
        int idUsuario = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarRoles();
        }
       
        protected void txtDNI_TextChanged(object sender, EventArgs e)
        {
            LimpiarMensajes();
            string dni = txtDNI.Text.Trim();

            if (registroEmpleado.ExisteUsuario(dni))
            {
                Usuario Usuario = registroEmpleado.ObtenerUsuario(dni);
                idUsuario = Usuario.idUsuario;
                MostrarInformacionUsuario(Usuario);

                if (registroEmpleado.ExisteEmpleado(dni) == 1)
                {
                    lblMensaje.Text = "El usuario ya está registrado como empleado.";
                    pnlAgregarEmpleado.Visible = false;
                }
                else
                {
                    pnlAgregarEmpleado.Visible = true;
                }
            }
            else
            {
                MostrarMensajeUsuarioNoExiste();
            }
        }
        protected void btnAgregarProd_Click(object sender, EventArgs e)
        {
            LimpiarMensajes();
            string dni = txtDNI.Text.Trim();


            try
            {
                Usuario Usuario = registroEmpleado.ObtenerUsuario(dni);
                idUsuario = Usuario.idUsuario;
                decimal salario = Convert.ToDecimal(txtSalario.Text);
                DateTime fechaIngreso = Convert.ToDateTime(txtFechaIngreso.Text);
                string horarios = ddlHorarios.SelectedValue;
                bool estado = chbEstadoInicial.Checked;
                int idRol = int.Parse(ddlRol.SelectedValue);

                Roles rol = new Roles { IdRol = idRol };

                Empleados empleado = new Empleados()
                {
                    idUsuario = idUsuario,
                    Salario = salario,
                    Rol = rol,
                    FechaIngreso = fechaIngreso,
                    Horario = horarios,
                    Estado = estado
                };

                registroEmpleado.AgregarEmpleado(empleado);
                LimpiarFormulario();
                lblMensaje.Text = "Empleado agregado correctamente.";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = $"Error al agregar empleado: {ex.Message}";
            }

        }
        private void CargarRoles()
        {
            registroEmpleado.CargarddlRoles(ref ddlRol);
            
        }
        private void MostrarInformacionUsuario(Usuario Usuario)
        {
            lblMensajeUsuario.Text = $@"El Usuario: {Usuario.nombre} {Usuario.apellido},<br />
                con Email: {Usuario.email}, Telefono: {Usuario.telefono} y Direccion: {Usuario.direccion} <br /><br />
                Ya Existe. Complete los datos de Empleado";

        }
        private void MostrarMensajeUsuarioNoExiste()
        {
            lblMensaje.Text = "El usuario No existe. ¿Desea Registrar un Nuevo Usuario?.";
            hlRegistrar.Visible = true;
            pnlAgregarEmpleado.Visible = false;
        }
        private void LimpiarMensajes()
        {
            lblMensaje.Text = "";
            lblMensajeUsuario.Text = "";
            hlRegistrar.Visible = false;
        }

        private void LimpiarFormulario()
        {
            txtDNI.Text = "";
            txtSalario.Text = "";
            txtFechaIngreso.Text = "";
            ddlHorarios.SelectedIndex = 0;
            chbEstadoInicial.Checked = false;
            ddlRol.SelectedIndex = 0;
            pnlAgregarEmpleado.Visible = false;
        }
    }
}