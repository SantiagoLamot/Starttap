using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Cliente
{
    public partial class EstadoReserva : System.Web.UI.Page
    {
        NegocioCliente negocioCliente = new NegocioCliente();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarEstadoPedidos();
            }
        }

        private void cargarEstadoPedidos()
        {
            string IdCliente = Request.Cookies["IdUsuario"].Value;
            
            dlReservasAceptadas.DataSource = negocioCliente.MostrarEstadoReservas("= 1", IdCliente);
            dlReservasAceptadas.DataBind();

            dlReservasPendientes.DataSource = negocioCliente.MostrarEstadoReservas("is null", IdCliente);
            dlReservasPendientes.DataBind();

            dlReservasRechazadas.DataSource = negocioCliente.MostrarEstadoReservas("= 0", IdCliente);
            dlReservasRechazadas.DataBind();
        }


    }
}