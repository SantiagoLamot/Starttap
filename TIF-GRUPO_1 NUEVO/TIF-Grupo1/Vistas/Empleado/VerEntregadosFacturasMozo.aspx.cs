using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Vistas.Empleado
{
    public partial class VerEntregados : System.Web.UI.Page
    {
        OrdenesNegocio neg = new OrdenesNegocio();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            //{
            //    lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            //}

            if (!IsPostBack)
            {
                CargarGridEntregados();
            }
        }

        public void CargarGridEntregados()
        {
            DataTable tablaEntregados = neg.getEntregados();

            gv_Entregados.DataSource = tablaEntregados;
            gv_Entregados.DataBind();
        }

        protected void btn_Buscar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(tb_IdOrden.Text);

            DataTable tablaOrden = neg.getOrden(id);

            if(tablaOrden.Rows.Count>0)
            {
                gv_OrdenEspecifica.DataSource = tablaOrden;
                gv_OrdenEspecifica.DataBind();

                gv_OrdenEspecifica.Visible = true;
                btn_Ocultar.Visible = true;
            }
            else
            {
                lblMensaje.Text = "No existe ID de orden facturada.";
            }

            gv_Detalles.Visible = false;
            btn_OcultarDetalles.Visible = false;
            lblMensaje2.Text = string.Empty;

        }

        protected void btn_Ocultar_Click(object sender, EventArgs e)
        {
            gv_OrdenEspecifica.Visible = false;
            btn_Ocultar.Visible = false;
            tb_IdOrden.Text = string.Empty;
            btn_OcultarDetalles.Visible = false;
            gv_Detalles.Visible = false;
            lblMensaje2.Text = string.Empty;
        }

        protected void gv_Entregados_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_Entregados.PageIndex = e.NewPageIndex;
            CargarGridEntregados();
        }


        protected void gv_Entregados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName== "eventoVerDetalles")
            {
                int fila = Convert.ToInt32(e.CommandArgument);
                int idOrden = int.Parse(((Label)gv_Entregados.Rows[fila].FindControl("lbl_it_IdOrden")).Text);

                gv_Detalles.Visible = true;
                btn_OcultarDetalles.Visible = true;

                lblMensaje2.Text = "Detalles de la orden numero: " + idOrden;
                DataTable tablaDetalles = neg.DetallesFactura(idOrden);
                gv_Detalles.DataSource = tablaDetalles;
                gv_Detalles.DataBind();

            }
        }

        protected void gv_OrdenEspecifica_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName== "eventoVerDetallesOrden")
            {
                int fila = Convert.ToInt32(e.CommandArgument);
                int idOrden = int.Parse(((Label)gv_OrdenEspecifica.Rows[fila].FindControl("lbl_it_IdOrden")).Text);

                gv_Detalles.Visible = true;
                btn_OcultarDetalles.Visible = true;

                lblMensaje2.Text = "Detalles de la orden numero: " + idOrden;
                DataTable tablaDetalles = neg.DetallesFactura(idOrden);
                gv_Detalles.DataSource = tablaDetalles;
                gv_Detalles.DataBind(); 
            }

        }

        protected void btn_OcultarDetalles_Click(object sender, EventArgs e)
        {
            btn_OcultarDetalles.Visible = false;
            gv_Detalles.Visible = false;
            lblMensaje2.Text = string.Empty;
        }
    }
}