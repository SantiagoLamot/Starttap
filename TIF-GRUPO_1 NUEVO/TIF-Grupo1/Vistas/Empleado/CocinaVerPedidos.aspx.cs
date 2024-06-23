using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace Vistas.Empleado
{
    public partial class CocinaVerPedidos : System.Web.UI.Page
    {
        OrdenesNegocio neg = new OrdenesNegocio();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGVOrdenes();
            }
        }

        protected void CargarGVOrdenes()
        {
            DataTable tablaOrdenes = neg.getTabla();

            gv_ListaOrdenes.DataSource = tablaOrdenes;
            gv_ListaOrdenes.DataBind();

        }

        protected void gv_ListaOrdenes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="eventoVerOrden")
            {
                int fila = Convert.ToInt32(e.CommandArgument);
                int idOrden = int.Parse(((Label)gv_ListaOrdenes.Rows[fila].FindControl("lbl_it_IdOrden")).Text);

                gv_Orden.Visible = true;

                lbl_DetalleOrden.Text = "Detalles de la orden Nº: " + idOrden;
                DataTable tablaOrden = neg.CargarOrden(idOrden);
                gv_Orden.DataSource = tablaOrden;
                gv_Orden.DataBind();

                btn_ContraerGVOrden.Visible = true;
            }
            
            if(e.CommandName == "eventoCocinado")
            {
                int fila = Convert.ToInt32(e.CommandArgument);
                int idOrden = int.Parse(((Label)gv_ListaOrdenes.Rows[fila].FindControl("lbl_it_IdOrden")).Text);

                if (neg.CambiarEstadoOrden(idOrden) == 1)
                {
                    CargarGVOrdenes();
                }

                lbl_MensajeOrden.Text = "La orden numero " + idOrden + " fue entregada con exito";
                gv_Orden.Visible = false;
                lbl_DetalleOrden.Text = string.Empty;
                btn_ContraerGVOrden.Visible = false;
            }
        }

        protected void btn_ContraerGVOrden_Click(object sender, EventArgs e)
        {
            gv_Orden.Visible = false;
            btn_ContraerGVOrden.Visible = false;
            lbl_DetalleOrden.Text = string.Empty;
        }

        protected void btn_VolverInicioEmpleado_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Empleado/InicioCocinero.aspx");
        }

        protected void gv_ListaOrdenes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_ListaOrdenes.PageIndex = e.NewPageIndex;
            CargarGVOrdenes();
        }
    }
}