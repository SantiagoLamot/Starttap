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
        }

        protected void btn_Ocultar_Click(object sender, EventArgs e)
        {
            gv_OrdenEspecifica.Visible = false;
            btn_Ocultar.Visible = false;
            tb_IdOrden.Text = string.Empty;
        }

        protected void gv_Entregados_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_Entregados.PageIndex = e.NewPageIndex;
            CargarGridEntregados();
        }

        protected void btn_Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Empleado/InicioMozo.aspx");
        }
    }
}