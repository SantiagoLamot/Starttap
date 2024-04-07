using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp2Ejercicio1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGeneraTabla_Click(object sender, EventArgs e)
        {
          
            if (string.IsNullOrEmpty(txtProducto1.Text) ||
                string.IsNullOrEmpty(txtProducto2.Text) ||
                string.IsNullOrEmpty(txtCantidad1.Text) ||
                string.IsNullOrEmpty(txtCantidad2.Text))
            {

                lblMensaje.Text = "*Por favor, completa todos los campos antes de generar la tabla.";
                return;
            }else
            {
                lblMensaje.Text = "";
            }


            string Producto1 = txtProducto1.Text;
            string Producto2 = txtProducto2.Text;
            int cant1 = int.Parse(txtCantidad1.Text);
            int cant2 = int.Parse(txtCantidad2.Text);
            string Tabla = "<table border = '1'>";
            Tabla += "<tr><th>Producto</th><th>Resultado</th><tr>";

            Tabla += "<tr>";
            Tabla += "<td>" + Producto1 + "</td>";
            Tabla += "<td>" + cant1 + "</td>";
            Tabla += "<tr>";
            Tabla += "<td>" + Producto2 + "</td>";
            Tabla += "<td>" + cant2 + "</td>";
            Tabla += "</tr>";
            Tabla += "<tr>";
            Tabla += "<td>" + "TOTAL" + "</td>";
            Tabla += "<td>" + (cant1 + cant2) + "</td>";
            Tabla += "</tr>";


            Tabla += "</table>";
            lblTabla.Text = Tabla;


        }

        
    }
}