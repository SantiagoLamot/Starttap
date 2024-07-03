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
        int RadioButtonSeleccionado = 0;
        ProductoNegocio productoNegocio = new ProductoNegocio();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }

            if (!IsPostBack)
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
            lFechaDesde.Visible = false;
            tbDesdeFecha.Visible = false;
            lFechaHasta.Visible = false;
            tbHastaFecha.Visible = false;
            ///RB 2
            lMondoDesde.Visible = false;
            tbDesdeMonto.Visible = false;
            lMontoHasta.Visible = false;
            tbHastaMonto.Visible = false;
            ///RB 4
            lMes.Visible = false;
            tbMes.Visible = false;
            ///RB 5
            lCategorias.Visible = false;
            ddlCategorias.Visible = false;
            ddlCategorias.Items.Clear();
            ddlCategorias.DataBind();
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
                desactivarControles();
            }
        }

        protected void rbProductoMasVendidoPorMes_CheckedChanged(object sender, EventArgs e)
        {
            if (rbProductoMasVendidoPorMes.Checked)
            {
                ViewState["RadioButtonSeleccionado"] = 4;
                motrarPanelMes();
            }
        }

        protected void rbProductoMasVendidoPorCategoria_CheckedChanged(object sender, EventArgs e)
        {
            if (rbProductoMasVendidoPorCategoria.Checked)
            {
                ViewState["RadioButtonSeleccionado"] = 5;
                motrarPanelProductoMasVendidoPorCategoria();
            }
        }

        protected void rbDiaDelMesConMasVentas_CheckedChanged(object sender, EventArgs e)
        {
            if (rbDiaDelMesConMasVentas.Checked)
            {
                ViewState["RadioButtonSeleccionado"] = 6;
                motrarPanelMes();
            }
        }
        private void motrarPanelVentasPorFecha()
        {
            desactivarControles();
            lFechaDesde.Visible = true;
            tbDesdeFecha.Visible = true;
            lFechaHasta.Visible = true;
            tbHastaFecha.Visible = true;
            gvTabla.DataSource = null;
            gvTabla.DataBind();
        }

        private void motrarPanelVentasPorMonto()
        {
            desactivarControles();
            lMondoDesde.Visible = true;
            tbDesdeMonto.Visible = true;
            lMontoHasta.Visible = true;
            tbHastaMonto.Visible = true;
            gvTabla.DataSource = null;
            gvTabla.DataBind();
        }

        private void motrarPanelProductoMasVendidoPorCategoria()
        {
            desactivarControles();
            lCategorias.Visible = true;
            ddlCategorias.Visible = true;

            productoNegocio.CargarDDLCategorias(ref ddlCategorias);
            ddlCategorias.DataBind();
            gvTabla.DataSource = null;
            gvTabla.DataBind();
        }

        private void motrarPanelMes()
        {
            desactivarControles();
            lMes.Visible = true;
            tbMes.Visible = true;
            gvTabla.DataSource = null;
            gvTabla.DataBind();

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {

            DataTable dataTable;
            DateTime fecha;
            DateTime fecha2;
            idInfo.Text = string.Empty;
            gvTabla.DataSource = null;
            gvTabla.DataBind();
            switch (RadioButtonSeleccionado)
            {
                case 1:
                    try
                    {
                        fecha = DateTime.Parse(tbDesdeFecha.Text);
                        fecha2 = DateTime.Parse(tbHastaFecha.Text);
                        dataTable = mostrarReportesNegocio.VentasPorRangoFechasNegocio(fecha, fecha2);
                        if (dataTable.Rows.Count > 0 && dataTable != null)
                        {
                            gvTabla.DataSource = dataTable;
                            gvTabla.DataBind();
                        }
                        else
                        {
                            idInfo.Text = "No se encontraron registros en el rango establecido, revíselo.";
                        }
                    }
                    catch
                    {
                        idInfo.Text = "No se encontraron registros en el rango establecido, revíselo.";
                    }
                    break;

                case 2:
                    dataTable = mostrarReportesNegocio.VentasPorRangoMontosNegocio(tbDesdeMonto.Text, tbHastaMonto.Text);
                    if (dataTable != null && dataTable.Rows.Count > 0)
                    {
                        gvTabla.DataSource = dataTable;
                        gvTabla.DataBind();
                    }
                    else
                    {
                        idInfo.Text = "No se encontraron registros con los montos ingresados, revíselos.";
                    }
                    break;

                case 3:

                    idInfo.Text = mostrarReportesNegocio.NegocioProductoMasVendido();
                    break;


                case 4:
                    try
                    {
                        fecha = DateTime.Parse(tbMes.Text);
                        idInfo.Text = mostrarReportesNegocio.ProductoMasVendidoPorMes(fecha);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        idInfo.Text = "fecha invalida, revísela.";
                    }
                    break;

                case 5:

                    idInfo.Text = mostrarReportesNegocio.ProductoMasVendidoPorCategoria(ddlCategorias.SelectedValue.ToString());
                    break;

                case 6:
                    try
                    {
                        fecha = DateTime.Parse(tbMes.Text);
                        idInfo.Text = mostrarReportesNegocio.DiaConMasVentas(fecha);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        idInfo.Text = "No se encontraron registros con el rango ingresado, revíselo.";

                    }

                    break;

                default:
                    idInfo.Text = "No se encontro nada" + RadioButtonSeleccionado;
                    break;
            }

        }

    }
}