using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_Grupo1
{
    public partial class SeleccionarProductos : System.Web.UI.Page
    {
        CargarGV cargarGV = new CargarGV();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarGV.CargarGridViewProductos(gv_productos2);
            }
            
        }
        protected void gv_productos2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_productos2.PageIndex = e.NewPageIndex;
            cargarGV.CargarGridViewProductos(gv_productos2);
        }
        protected void gv_productos2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
            List<Producto> productosSeleccionados = Session["productosSeleccionados"] as List<Producto> ?? new List<Producto>();
            foreach (GridViewRow fila in gv_productos2.Rows)
            {
                if (fila.RowIndex == e.NewSelectedIndex)
                {
                    string idProducto = ((Label)fila.FindControl("lblIDProducto")).Text;
                    string nombreProd = ((Label)fila.FindControl("lblNombre")).Text;
                    string idProveedor = ((Label)fila.FindControl("lblIDProveedor")).Text;
                    string precioUnitario = ((Label)fila.FindControl("lblPrecioUni")).Text;

                    bool productoExiste = productosSeleccionados.Exists(prod => prod.IdProducto == int.Parse(idProducto));

                    if (!productoExiste)
                    {
                        Producto prod = new Producto
                        (
                            int.Parse(idProducto),
                            nombreProd,
                            int.Parse(idProveedor),
                            decimal.Parse(precioUnitario)
                        );

                        productosSeleccionados.Add(prod);
                        Session["productosSeleccionados"] = productosSeleccionados;

                        lblProductoSeleccionado.Text = $"Producto seleccionado: {nombreProd} - Precio: ${precioUnitario}";

                        break;
                    }
                    else
                    {
                        lblProductoSeleccionado.Text = "El producto ya ha sido seleccionado";
                        lblProductoSeleccionado.ForeColor = System.Drawing.Color.DarkRed;
                    }
                }
            }
        }
        protected void gv_productos2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        
    }
}