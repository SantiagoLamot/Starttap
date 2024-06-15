using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Vistas.Administrador
{
    public partial class MostrarReportes : System.Web.UI.Page
    {

        MostrarReportesNegocio mostrarReportesNegocio = new MostrarReportesNegocio();
        int RadioButtonSeleccionado;
        ProductoNegocio productoNegocio = new ProductoNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                desactivarControles();
            }
            else
            {
                if (ViewState["RadioButtonSeleccionado"] != null)
                {
                    RadioButtonSeleccionado = Convert.ToInt32(ViewState["RadioButtonSeleccionado"]);
                }
                
            }

        }
        private void desactivarControles()
        {
            ///RB 1
            lFechaDesde.Visible= false;
            tbDesdeFecha.Visible = false;
            lFechaHasta.Visible= false;
            tbHastaFecha.Visible = false;
            ///RB 2
            lMondoDesde.Visible= false;
            tbDesdeMonto.Visible = false;
            lMontoHasta.Visible= false;
            tbHastaMonto.Visible = false;
            ///RB 4
            lCategorias.Visible = false;
            ddlCategorias.Visible = false;
        }
        protected void rbVentasPor_CheckedChanged(object sender, EventArgs e)
        {
            if (rbVentasPorFechas.Checked)
            {
                motrarPanelVentasPorFecha();
                ViewState["RadioButtonSeleccionado"] = 1; //// No me restablece el valor al realizarse un postback
            }

        }

        protected void rbVentasPorRangoMonto_CheckedChanged(object sender, EventArgs e)
        {
            if (rbVentasPorRangoMonto.Checked)
            {
                ViewState["RadioButtonSeleccionado"] = 2;
                motrarPanelVentasPorMonto();
            }

        }
        
        protected void rbProductoMasVendido_CheckedChanged(object sender, EventArgs e)
        {
            if (rbProductoMasVendido.Checked)
            {
                ViewState["RadioButtonSeleccionado"] = 3;
                PanelFiltros.Controls.Clear();
            }
        }

        protected void rbProductoMasVendidoPorCategoria_CheckedChanged(object sender, EventArgs e)
        {
            if (rbProductoMasVendidoPorCategoria.Checked)
            {
                ViewState["RadioButtonSeleccionado"] = 4;
                motrarPanelProductoMasVendidoPorCategoria();
            }
        }

        protected void rbDiaDelMesConMasVentas_CheckedChanged(object sender, EventArgs e)
        {
            if (rbDiaDelMesConMasVentas.Checked)
            {
                ViewState["RadioButtonSeleccionado"] = 5;
                motrarPanelDiaDelMesConMasVentas();
            }
        }
        private void motrarPanelVentasPorFecha()
        {
            //PanelFiltros.Controls.Clear();
            //Label lbFechaDesde = new Label { Text = "Desde:" };
            //Label lbFechaHasta = new Label { Text = "Hasta:" };
            //TextBox FechaDesde = new TextBox { ID="tbFechaDesde" };
            //FechaDesde.TextMode = TextBoxMode.Date;
            //TextBox FechaHasta = new TextBox { ID = "tbFechaHasta" };
            //FechaHasta.TextMode = TextBoxMode.Date;
            //PanelFiltros.Controls.Add(lbFechaDesde);
            //PanelFiltros.Controls.Add(FechaDesde);
            //PanelFiltros.Controls.Add(lbFechaHasta);
            //PanelFiltros.Controls.Add(FechaHasta);
            lFechaDesde.Visible = true;
            tbDesdeFecha.Visible = true;
            lFechaHasta.Visible = true;
            tbHastaFecha.Visible = true;
            gvTabla.DataSource = null;
            gvTabla.DataBind();
        }

        private void motrarPanelVentasPorMonto()
        {
            //PanelFiltros.Controls.Clear();
            //Label lbDesdeMonto = new Label { Text = "Desde: $" };
            //Label lbHastaMonto = new Label { Text = "Hasta: $" };
            //TextBox FechaDesde = new TextBox { ID = "tbFechaDesde" };
            //FechaDesde.TextMode = TextBoxMode.Number;
            //TextBox FechaHasta = new TextBox { ID = "tbFechaHasta" };
            //FechaHasta.TextMode = TextBoxMode.Number;
            //PanelFiltros.Controls.Add(lbDesdeMonto);
            //PanelFiltros.Controls.Add(FechaDesde);
            //PanelFiltros.Controls.Add(lbHastaMonto);
            //PanelFiltros.Controls.Add(FechaHasta);
            lMondoDesde.Visible = true;
            tbDesdeMonto.Visible = true;
            lMontoHasta.Visible = true;
            tbHastaMonto.Visible = true;
            gvTabla.DataSource = null;
            gvTabla.DataBind();
        }

        private void motrarPanelProductoMasVendidoPorCategoria()
        {
            //PanelFiltros.Controls.Clear();
            //Label lbCategoria = new Label { Text = "Categoria:" };
            //PanelFiltros.Controls.Add(lbCategoria);
            //PanelFiltros.Controls.Add(ddlCategoria);
            lCategorias.Visible = true;
            ddlCategorias.Visible = true;
            ddlCategorias.DataSource = (IDataAdapter)productoNegocio.CargarDDLCategorias();
            ddlCategorias.DataBind();
            gvTabla.DataSource = null;
            gvTabla.DataBind();
        }

        private void motrarPanelDiaDelMesConMasVentas()
        {
            PanelFiltros.Controls.Clear();
            Label lbSeleccionarMes = new Label { Text = "Mes:" };
            TextBox tbMes = new TextBox { ID = "tbMes" };
            tbMes.TextMode = TextBoxMode.Month;
            PanelFiltros.Controls.Add(lbSeleccionarMes);
            PanelFiltros.Controls.Add(tbMes);
            gvTabla.DataSource = null;
            gvTabla.DataBind();
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            switch (RadioButtonSeleccionado)
            {
                case 1:
                    idInfo.Text = tbDesdeFecha.Text +"----"+ tbHastaFecha.Text;
                    
                    break;

                case 2:
                    idInfo.Text = "entro al " + RadioButtonSeleccionado;

                    break;

                case 3:
                    idInfo.Text = "entro al " + RadioButtonSeleccionado;
                    break;


                case 4:
                    idInfo.Text = "entro al " + RadioButtonSeleccionado;

                    break;

                case 5:
                    idInfo.Text = "entro al " + RadioButtonSeleccionado;
                    break;

                default:
                    idInfo.Text = "No se encontro nada" + RadioButtonSeleccionado;
                    break;
            }

            }
            public static Control FindControlRecursive(Control root, string id)
        {
            if (root.ID == id)
                return root;

            foreach (Control child in root.Controls)
            {
                Control found = FindControlRecursive(child, id);
                if (found != null)
                    return found;
            }

            return null;
        }

        protected void btnMostrar_PreRender(object sender, EventArgs e)
        {

        }
        //if (rbVentasPorFechas.Checked)
        //{
        //    DataTable dataTable =  mostrarReportesNegocio.MostrarProductos();
        //    gvTabla.DataSource = dataTable;
        //    gvTabla.DataBind();
        //}

        //else
        //{
        //    DataTable dataTable = mostrarReportesNegocio.MostrarClientes();
        //    gvTabla.DataSource = dataTable;
        //    gvTabla.DataBind();
        //}

        //protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        //{
        //    gvTabla.DataSource =null;
        //    gvTabla.DataBind();
        //}
    }
}