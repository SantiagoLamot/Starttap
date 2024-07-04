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
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }

            if (!IsPostBack)
            {
                CargarOrdenes();
                CargarMesas();
            }
        }
        private void CargarOrdenes(string estado = "", int? idMesa = null, DateTime? fecha = null)
        {
            DataTable tablaProductos = negocioOrdenes.MostrarOrdenens(estado, idMesa, fecha);
            gvTablaSolicitudesPedidos.DataSource = tablaProductos;
            gvTablaSolicitudesPedidos.DataBind();
        }

        protected void gvTablaSolicitudesPedidos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Ver Estado")
            {
                int idOrden = Convert.ToInt32(e.CommandArgument);

                DataTable TablaEstado = negocioOrdenes.VerEstado(idOrden);
                gvEstadoPreparacion.DataSource = TablaEstado;
                gvEstadoPreparacion.DataBind();
            }
            else if (e.CommandName == "Confirmar")
            {
                int idOrden = Convert.ToInt32(e.CommandArgument);
                negocioOrdenes.CambiarEstadoOrdenComanda(idOrden);
               
                CargarOrdenes();
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
            DateTime? fecha = null;

            
            if (estado == "PorMesa")
            {
                idMesa = int.Parse(ddlMesas.SelectedValue);
                estado = ""; 
            }
            else if (estado == "EnEspera")
            {
                estado = "0";
            }
            else if (estado == "Tomado")
            {
                estado = "1";
            }
            if (!string.IsNullOrEmpty(txtFechaFiltro.Text))
            {
                if (DateTime.TryParse(txtFechaFiltro.Text, out DateTime Fechaconvertida))
                {
                    fecha = Fechaconvertida;
                }
            }else
            {
                CargarOrdenes();
            }

            CargarOrdenes(estado, idMesa, fecha);
        }
        private void CargarMesas()
        {
            DataTable mesas = negocioOrdenes.ObtenerMesas();
            ddlMesas.DataSource = mesas;
            ddlMesas.DataTextField = "IdMesa";
            ddlMesas.DataValueField = "IdMesa";
            ddlMesas.DataBind();
        }

        protected void gvTablaSolicitudesPedidos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTablaSolicitudesPedidos.PageIndex = e.NewPageIndex;
            CargarOrdenes();
        }
    }
}