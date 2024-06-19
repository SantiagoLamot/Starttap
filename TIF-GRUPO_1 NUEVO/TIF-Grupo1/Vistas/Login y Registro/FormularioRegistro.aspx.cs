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
              
        }
    }
}