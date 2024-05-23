using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace TP6_Grupo1
{
    public class CargarGV
    {
        public void CargarGridViewProductos(GridView gvProductos)
        {
            GestionProductos gestionProductos = new GestionProductos();
            gvProductos.DataSource = gestionProductos.obtenerProducto();
            gvProductos.DataBind();
        }
    }
}