using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class FormularioRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string email = txtmail.Text;
            string contraseña = txtContraseña.Text;
            string dni = txtDNI.Text;
            string telefono = $"{DropDownList1.SelectedValue}{txtcodarea.Text}{txtnumtelefono.Text}";
            string direccion = txtDireccion.Text;

            Usuario usuario = new Usuario
            {
                _nombre = nombre,
                _apellido = apellido,
                _email = email,
                _contraseña = contraseña,
                _dni = dni,
                _telefono = telefono,
                _direccion = direccion
            };

        }
    }
}