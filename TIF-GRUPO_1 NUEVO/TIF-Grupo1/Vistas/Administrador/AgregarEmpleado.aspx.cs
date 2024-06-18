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
            CargarCategorias();
        }
        private void CargarCategorias()
        {
            registroEmpleado.CargarddlRoles(ref ddlRol);
            
        }
        protected void txtDNI_TextChanged(object sender, EventArgs e)
        {
            string dni = txtDNI.Text;

            if (registroEmpleado.ExisteUsuario(dni))
            {
                Usuario Usuario = registroEmpleado.ObtenerUsuario(dni);
                idUsuario = Usuario.idUsuario;
                lblMensajeUsuario.Text = $"El Usuario con Identificador {Usuario.idUsuario}," +
                    $" Nombre: {Usuario.nombre} {Usuario.apellido}, " +
                    $" Email: {Usuario.email}, DNI:  {Usuario.dni}" +
                    $" Telefono: {Usuario.telefono}, Direccion: {Usuario.direccion}" +
                    $" Ya Existe. Complete los datos de Empleado";
               
            }
            else
            {
                lblMensaje.Text = "El usuario No existe. ¿Desea Registrar un Nuevo Usuario?.";
                hlRegistrar.Visible = true;
            }
        }
        protected void btnAgregarProd_Click(object sender, EventArgs e)
        {
            int IdUsuario = idUsuario;
            decimal salario = Convert.ToDecimal(txtSalario.Text);
            int idRol = Convert.ToInt32(ddlRol.SelectedValue);
            DateTime fechaIngreso = Convert.ToDateTime(txtFechaIngreso.Text);
            string horarios = ddlHorarios.SelectedValue;
            bool estado = chbEstadoInicial.Checked;
            
            Empleados empleado = new Empleados();
            
            registroEmpleado.AgregarEmpleado(empleado);
             /// Solucionado ;)
            
        }
    }
}