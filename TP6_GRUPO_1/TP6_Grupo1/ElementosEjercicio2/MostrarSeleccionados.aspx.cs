using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_Grupo1
{
    public partial class MostrarSeleccionados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                var productosSeleccionados = Session["productosSeleccionados"] as List<Producto>;

                if (productosSeleccionados != null && productosSeleccionados.Count >= 1)
                {
                    gv_MostrarSeleccion.DataSource = productosSeleccionados;
                    gv_MostrarSeleccion.DataBind();
                }
                else
                {
                    lblNoSeleccion.Visible = true;
                    lblNoSeleccion.Text = "No se han seleccionado productos.";
                    lblNoSeleccion.ForeColor = System.Drawing.Color.PaleVioletRed;
                }
            }
        }

        protected void gv_MostrarSeleccion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}