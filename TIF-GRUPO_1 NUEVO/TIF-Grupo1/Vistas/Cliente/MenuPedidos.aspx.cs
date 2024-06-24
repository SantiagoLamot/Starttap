using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Cliente
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarCarritoB_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eAgregarCarritoB")
            {
                Button btnAgregar = (Button)sender;
                DataListItem item = (DataListItem)btnAgregar.NamingContainer;

                TextBox txtCantidadB = (TextBox)item.FindControl("txtCantidadB");
                Label lblPrecio = (Label)item.FindControl("lblPrecioB");

                string Nombre = e.CommandArgument.ToString();
                string Cantidad = txtCantidadB.Text;
                decimal Precio;
                decimal.TryParse(lblPrecio.Text, out Precio);

                List<Producto> carrito = ObtenerCarritoDesdeSesion();

                Producto producto = new Producto
                {
                    nombre = Nombre,
                    stock = int.Parse(Cantidad),
                    precio = Precio
                };

                carrito.Add(producto);

                GuardarCarritoEnSesion(carrito);
                GuardarCarritoEnCookie(carrito);
            }

        }
        private void GuardarCarritoEnSesion(List<Producto> carrito)
        {
            Session["Carrito"] = carrito;
        }
        private List<Producto> ObtenerCarritoDesdeSesion()
        {
            List<Producto> carrito = (List<Producto>)Session["Carrito"];
            if (carrito == null)
            {
                carrito = new List<Producto>();
            }
            return carrito;
        }
        private void GuardarCarritoEnCookie(List<Producto> carrito)
        {
            HttpCookie carritoCookie = new HttpCookie("Carrito");

            StringBuilder productos = new StringBuilder();
            foreach (var producto in carrito)
            {
                productos.Append($"{producto.nombre}|{producto.stock}|{producto.precio},");
            }
            carritoCookie["Productos"] = productos.ToString().TrimEnd(',');

            carritoCookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(carritoCookie);
        }
    }
}
   
