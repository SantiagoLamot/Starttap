using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Empleado
{
    public partial class SolicitudesReservas : System.Web.UI.Page
    {
        EmpleadosNegocio empleadosNegocio = new EmpleadosNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarReservas();
            }
        }
        private void CargarReservas()
        {
            gvSolicitudesReservas.DataSource = empleadosNegocio.SolicitudesDeReservasPendientes();
            gvSolicitudesReservas.DataBind();
        }

        protected void gvSolicitudesReservas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Click_Aceptar")
            {
                int IdReserva = Convert.ToInt32(e.CommandArgument.ToString());

                if (empleadosNegocio.SetearEstadoReserva(1, IdReserva) == 1)
                {
                    CargarReservas();
                }
            }

            else if (e.CommandName == "Click_Rechazar")
            {
                int IdReserva = Convert.ToInt32(e.CommandArgument.ToString());

                if (empleadosNegocio.SetearEstadoReserva(0, IdReserva) == 1)
                {
                    CargarReservas();
                }
            }
        }
    }
}