using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_Grupo1
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnDeleteProd_Click(object sender, EventArgs e)
        {
            if (Session["ProductosSeleccionados"] != null)
            {
                List<Producto> productosSeleccionados = Session["ProductosSeleccionados"] as List<Producto>;

                if (productosSeleccionados != null && productosSeleccionados.Count >= 1)
                {
                    productosSeleccionados.Clear();
                    Session["ProductosSeleccionados"] = productosSeleccionados;

                    Response.Write("<script>alert('Productos seleccionados eliminados.');</script>");
                }
                else
                {

                    Response.Write("<script>alert('No hay productos seleccionados para eliminar.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('No hay productos seleccionados para eliminar.');</script>");
            }
        }
    }
}