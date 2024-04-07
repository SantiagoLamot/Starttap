using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(txtProducto.Text) ||
                string.IsNullOrEmpty(txtProducto2.Text) ||
                string.IsNullOrEmpty(txtCantidad.Text) ||
                string.IsNullOrEmpty(txtCantidad2.Text))
            {

                lblMensaje.Text = "*Por favor, completa todos los campos antes de generar la tabla.";
                return;
            }
            else
            {
                lblMensaje.Text = "";
            }


            String Producto1 = txtProducto.Text;
            String Producto2 = txtProducto2.Text;
            int cantidad1 = int.Parse(txtCantidad.Text);
            int cantidad2 = int.Parse(txtCantidad2.Text);
            String Tabla = "<table border = '1'>";
            Tabla += "<tr><th>Producto</th><th>Cantidad</th><tr>";

            Tabla += "<tr>";
            Tabla += "<td>" + Producto1 + "</td>";
            Tabla += "<td>" + cantidad1 + "</td>";
            Tabla += "<tr>";
            Tabla += "<td>" + Producto2 + "</td>";
            Tabla += "<td>" + cantidad2 + "</td>";
            Tabla += "</tr>";
            Tabla += "<tr>";
            Tabla += "<td>" + "TOTAL" + "</td>";
            Tabla += "<td>" + (cantidad1 + cantidad2) + "</td>";
            Tabla += "</tr>";

            Tabla += "</table>";
            lblTabla.Text = Tabla;

            txtCantidad.Text = " ";
            txtCantidad2.Text = " ";
            txtProducto.Text = " ";
            txtProducto2.Text = " ";
        }
    }
}