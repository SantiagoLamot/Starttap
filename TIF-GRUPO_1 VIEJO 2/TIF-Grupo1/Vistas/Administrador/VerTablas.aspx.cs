using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administrador
{
    public partial class VerTablas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            switch (ddlTablas.SelectedValue)
            {
                    
                case "1":
                    //Response.Redirect("/Administrador/TablaProductos.aspx");
                    
                    break;
                case "2":
                    Response.Redirect("/Administrador/TablaEmpleados.aspx");

                    break;
                case "3":
                    Response.Redirect("/Administrador/TablaClientes.aspx");
                    break;
                case "4":
                    //Response.Redirect("/Administrador/TablaVentas.aspx");
                    break;
                default:
                    
                    break;

            }
        }
    }
}