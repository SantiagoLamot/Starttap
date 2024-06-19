using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas.Login_y_Registro
{
    public partial class Ingreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            NegocioUsuario negocioUsuario = new NegocioUsuario();
            //Detectar si en la tabla de datos el email y contraseña son coincidentes
            if (negocioUsuario.IniciarSesion(new Usuario(tb_Email.Text, tb_Contraseña.Text)))
            {
                //Detectar que tipo de usuario esta ingresando
                Usuario usuarioEmail = new Usuario(tb_Email.Text);
                int TipoUsuario;
                TipoUsuario = negocioUsuario.ObtenerTipoDeUsuario(usuarioEmail);


                //Obtener los datos personales del ingresado en una cookie
                Usuario DatosUsuario = new Usuario();

                DatosUsuario = negocioUsuario.ObtenerDatosUsuario(usuarioEmail);

                HttpCookie ckNombre = new HttpCookie("NombreUsuario", DatosUsuario.nombre);
                ckNombre.Expires = DateTime.Now.AddDays(1);
                this.Response.Cookies.Add(ckNombre);

                HttpCookie ckApellido = new HttpCookie("ApellidoUsuario", DatosUsuario.apellido);
                ckApellido.Expires = DateTime.Now.AddDays(1);
                this.Response.Cookies.Add(ckApellido);

                HttpCookie ckEmail = new HttpCookie("EmailUsuario", DatosUsuario.email);
                ckEmail.Expires = DateTime.Now.AddDays(1);
                this.Response.Cookies.Add(ckEmail);


                lblMensaje.Text = "Sesion iniciada con exito";
                if (TipoUsuario == 1)
                {
                    Response.Redirect("/Administrador/VerTablas.aspx");
                }
                else if (TipoUsuario == 2)
                {
                    //Response.Redirect("/Empleado/InicioEmpleado.aspx");
                    lblMensaje1.Text = "tipo usuario 2: Emplado";
                }
                else
                {
                    //Response.Redirect("/Empleado/InicioEmpleado.aspx");
                    lblMensaje1.Text = "tipo usuario 3: Cliente";
                }

            }
            else
            {
                lblMensaje.Text = "No se pudo iniciar sesion";
                tb_Email.Text = string.Empty;
            }
        }
    }
}