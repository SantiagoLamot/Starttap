using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Empleado
{
    public partial class InicioMozo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }
        }

        protected void btn_CerrarSesion_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null)
            {
                HttpCookie nombreCookie = new HttpCookie("NombreUsuario");
                nombreCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(nombreCookie);
            }

            if (Request.Cookies["ApellidoUsuario"] != null)
            {
                HttpCookie apellidoCookie = new HttpCookie("ApellidoUsuario");
                apellidoCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(apellidoCookie);
            }

            if (Request.Cookies["IdUsuario"] != null)
            {
                HttpCookie ckIdUsuario = new HttpCookie("IdUsuario");
                ckIdUsuario.Expires = DateTime.Now.AddDays(-1);
                this.Response.Cookies.Add(ckIdUsuario);
            }

            Response.Redirect("~/Login y Registro/Ingreso.aspx");
        }
    }
}