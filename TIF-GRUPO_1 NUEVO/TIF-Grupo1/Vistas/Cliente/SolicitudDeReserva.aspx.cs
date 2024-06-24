using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas.Cliente
{
    public partial class SolicitudDeReserva : System.Web.UI.Page
    {
        NegocioCliente negocioCliente = new NegocioCliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                CargarMesas();
            }

        }

        private void CargarMesas()
        {
            DateTime dateTime = DateTime.Now;
            dlMesas.DataSource = negocioCliente.CargarMesas(new DateTime());
            dlMesas.DataBind();
        }

        protected void tbFecha_TextChanged(object sender, EventArgs e)
        {
            dlMesas.DataSource = negocioCliente.CargarMesas(DateTime.Parse(tbFecha.Text));
            dlMesas.DataBind();
        }

        private void vaciarCampos()
        {
            tbComensales.Text = string.Empty;
            tbFecha.Text = string.Empty;
        }

        protected void dlMesas_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "btnReservar")
            {
                
                int IdCliente = Convert.ToInt32(Request.Cookies["IdUsuario"].Value);
                
                int mesaId = Convert.ToInt32(e.CommandArgument.ToString());
                int mesa = Convert.ToInt32(((Label)e.Item.FindControl("lblNumeroMesa")).Text);

                Reserva reserva = new Reserva(IdCliente, mesaId, DateTime.Parse(tbFecha.Text), int.Parse(tbComensales.Text));

                if (negocioCliente.CargarReserva(reserva) == 1)
                {
                    lblMensaje.Text = "La reserva fue solicitada exitosamente";
                    vaciarCampos();
                    CargarMesas();
                }
                else
                {
                    lblMensaje.Text = "Error al intentar grabar reserva";
                }
            }
        }
    }
}