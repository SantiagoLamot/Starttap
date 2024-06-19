using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


namespace Vistas
{
    public partial class FormularioRegistro : System.Web.UI.Page
    {
        RegistroUsuarioNegocio registro = new RegistroUsuarioNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            bool esRegistroPorAdmin = UserIsAdmin();
            hdnEsRegistroPorAdmin.Value = esRegistroPorAdmin.ToString().ToLower();
        }

        protected void btnRegistrarse_click(object sender, EventArgs e)
        {
            string _nombre = txtNombre.Text;
            string _apellido = txtApellido.Text;
            string _email = txtmail.Text;
            string _contraseña = txtContraseña.Text;
            string _dni = txtDNI.Text;
            string _telefono = $"{DropDownList1.SelectedValue}{txtcodarea.Text}{txtnumtelefono.Text}";
            string _direccion = txtDireccion.Text;


            Usuario usuario = new Usuario
            {
                nombre = _nombre,
                apellido = _apellido,
                email = _email,
                contraseña = _contraseña,
                dni = _dni,
                telefono = _telefono,
                direccion = _direccion
            };


            if (registro.ExisteUsuario(_dni))
            {
                lblmensaje.Text = "El usuario ya se encuentra registrado";
            }
            else
            {
                bool esRegistroPorAdmin = bool.Parse(hdnEsRegistroPorAdmin.Value);
                registro.RegistroUsuarioNuevo(usuario);

                lblmensaje.Text = "Registrado Exitosamente";
                if (esRegistroPorAdmin)
                {
                    Response.Redirect("~/Administrador/AgregarEmpleado.aspx");

                }
                else
                {
                    Response.Redirect("Ingreso.aspx");
                }
            }

        }
        private bool UserIsAdmin()
        {
            // Implementa tu lógica para verificar si el usuario es administrador
            // Ejemplo simple, debes adaptarlo a tu contexto:
            return Session["IsAdmin"] != null && (bool)Session["IsAdmin"];
        }
    }
}