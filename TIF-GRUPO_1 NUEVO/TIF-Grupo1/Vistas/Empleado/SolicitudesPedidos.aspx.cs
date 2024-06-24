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
            }
        }
        private void CargarOrdenesPorMesa()
        {
            DataTable tablaProductos = negocioOrdenes.MostrarOrdenensporMesa();
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

        }
    }
}