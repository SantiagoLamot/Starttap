using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TP6_Grupo1
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CargarGridViewProductos();
            }
        }

        private void CargarGridViewProductos()
        {
            GestionProductos gestionProductos = new GestionProductos();
            gv_Productos.DataSource = gestionProductos.MostrarProductos();
            gv_Productos.DataBind();
        }

        protected void gv_Productos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string idProducto = ((Label)gv_Productos.Rows[e.RowIndex].FindControl("lbl_it_idProducto")).Text;

            Producto prod = new Producto(Convert.ToInt32(idProducto));

            GestionProductos gestionProd = new GestionProductos();
            gestionProd.EliminarProducto(prod);
            CargarGridViewProductos();
        }

        protected void gv_Productos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_Productos.PageIndex = e.NewPageIndex;
            CargarGridViewProductos();
        }

        protected void gv_Productos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv_Productos.EditIndex = e.NewEditIndex;
            CargarGridViewProductos();
        }

        protected void gv_Productos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_Productos.EditIndex = -1;
            CargarGridViewProductos();
        }

        protected void gv_Productos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string idProducto = ((Label)gv_Productos.Rows[e.RowIndex].FindControl("l_EIT_IdProducto")).Text;
            string NomProducto = ((TextBox)gv_Productos.Rows[e.RowIndex].FindControl("tb_EIT_NombreProducto")).Text;
            string CantPorUnidad= ((TextBox)gv_Productos.Rows[e.RowIndex].FindControl("tb_EIT_CantidadXunidad")).Text;
            string PrecioPorUnidad= ((TextBox)gv_Productos.Rows[e.RowIndex].FindControl("tb_EIT_PrecioXunidad")).Text;
            Producto producto = new Producto(Convert.ToInt32(idProducto), NomProducto, CantPorUnidad, Convert.ToDecimal(PrecioPorUnidad));
            GestionProductos gestionProductos = new GestionProductos();
            gestionProductos.EditarProducto(producto);
            gv_Productos.EditIndex = -1;
            CargarGridViewProductos();
        }
    }
}