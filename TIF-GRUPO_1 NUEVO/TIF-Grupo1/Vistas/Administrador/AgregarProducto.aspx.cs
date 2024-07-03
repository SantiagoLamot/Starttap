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

namespace Vistas
{
    public partial class AgregarProducto : System.Web.UI.Page
    {
        MostrarReportesNegocio Negocio = new MostrarReportesNegocio();
        ProductoNegocio Negocio1 = new ProductoNegocio();
        NegocioOrdenes negStock = new NegocioOrdenes();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProductos();
                CargarCategorias();
            }
        }
        protected void btnAgregarProd_Click(object sender, EventArgs e)
        {
            string nombre = txtNombreProducto.Text;
            string descripcion = txtDescripcionProducto.Text;
            decimal precio = decimal.Parse(txtPrecioProducto.Text);
            int stock = int.Parse(txtStockInicial.Text);
            string imagenUrl = txtImagenURL.Text;
            bool estado = chbEstadoInicial.Checked;
            int idCategoria = int.Parse(ddlCategorias.SelectedValue);

            Producto producto = new Producto
            {
                nombre = nombre,
                Descripcion = descripcion,
                precio = precio,
                stock = stock,
                imagenURL = imagenUrl,
                estado = estado,
                categoria = new Categoria { idCategoria = idCategoria }
            };

            if (Negocio1.ExisteProducto(producto.nombre))
            {
                lblMensaje.Text = "El producto ya existe";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }

            Negocio1.InsertarProductosYCategorias(producto);

            CargarProductos();
            LimpiarCampos();

            lblMensaje.Text = "El producto se creo exitosamente.";
            lblMensaje.ForeColor = System.Drawing.Color.Green;


        }

        protected void gvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvProductos.PageIndex = e.NewPageIndex;
            CargarProductos();
        }

        private void CargarProductos()
        {
            DataTable tablaProductos = Negocio.MostrarProductos();
            gvProductos.DataSource = tablaProductos;
            gvProductos.DataBind();
        }

        private void CargarCategorias()
        {
            Negocio1.CargarDDLCategorias(ref ddlCategorias);
        }

        private void LimpiarCampos()
        {
            txtNombreProducto.Text = "";
            txtDescripcionProducto.Text = "";
            txtPrecioProducto.Text = "";
            txtStockInicial.Text = "";
            txtImagenURL.Text = "";
            chbEstadoInicial.Checked = false;
            ddlCategorias.SelectedIndex = 0;
        }

        protected void gvProductos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "CambiarEstado")
            {
                int idProducto = Convert.ToInt32(e.CommandArgument);
                int rowAfecteds = Negocio1.ActualizarEstadoProducto(idProducto);

                if(rowAfecteds > 0)
                {
                    CargarProductos();
                }
            }
            else if (e.CommandName == "ActualizarStock")
            {
                string Nombre = e.CommandArgument.ToString();
                int cantidad = int.Parse(txtCantidad.Text);

                negStock.ActualizarStock(Nombre, cantidad);
                txtCantidad.Text = "";
            }
        }
    }
}