using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;
using static Negocio.negOrdenes;


namespace Vistas.Empleado
{
    public partial class SolicitudesPedidos : System.Web.UI.Page
    {
        NegocioOrdenes negocioOrdenes = new NegocioOrdenes();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarOrdenesPorMesa();
                CargarMesas();
            }
        }
        private void CargarOrdenesPorMesa(string estado = "", int? idMesa = null)
        {
            DataTable tablaProductos = negocioOrdenes.MostrarOrdenensporMesa(estado, idMesa);
            gvTablaSolicitudesPedidos.DataSource = tablaProductos;
            gvTablaSolicitudesPedidos.DataBind();
        }

        protected void gvTablaSolicitudesPedidos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            

            if (e.CommandName == "Confirmar")
            {
                int idOrden = Convert.ToInt32(e.CommandArgument);
                int fila = Convert.ToInt32(e.CommandArgument);

                negocioOrdenes.CambiarEstadoOrdenComanda(idOrden);


                if (fila > 0)
                {
                    CargarOrdenesPorMesa();
                }
            }

        }

        protected void rblFiltro_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblFiltro.SelectedValue == "PorMesa")
            {
                ddlMesas.Visible = true;
            }
            else
            {
                ddlMesas.Visible = false;
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string estado = rblFiltro.SelectedValue;
            int? idMesa = null;

            if (estado == "PorMesa")
            {
                idMesa = int.Parse(ddlMesas.SelectedValue);
                estado = ""; // No filtrar por estado cuando se filtra por mesa
            }
            else if (estado == "EnEspera")
            {
                estado = "0";
            }
            else if (estado == "Tomado")
            {
                estado = "1";
            }

            CargarOrdenesPorMesa(estado, idMesa);
        }
        private void CargarMesas()
        {
            DataTable mesas = negocioOrdenes.ObtenerMesas();
            ddlMesas.DataSource = mesas;
            ddlMesas.DataTextField = "IdMesa";
            ddlMesas.DataValueField = "IdMesa";
            ddlMesas.DataBind();
        }
    }
}