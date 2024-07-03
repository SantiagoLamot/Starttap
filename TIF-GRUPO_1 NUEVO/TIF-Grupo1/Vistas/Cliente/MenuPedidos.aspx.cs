using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using static Negocio.negOrdenes;

namespace Vistas.Cliente
{
    public partial class Menu : System.Web.UI.Page
    {
        NegocioOrdenes negStock = new NegocioOrdenes();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["NombreUsuario"] != null && Request.Cookies["ApellidoUsuario"] != null)
            {
                lblNombreUsuario.Text = (Request.Cookies["NombreUsuario"].Value + "  " + Request.Cookies["ApellidoUsuario"].Value).ToUpper();
            }
        }

        protected void btnAgregarCarritoB_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eAgregarCarritoB")
            {
                lblMensaje.Visible = false;
                Button btnAgregar = (Button)sender;
                DataListItem item = (DataListItem)btnAgregar.NamingContainer;


                TextBox txtCantidadB = (TextBox)item.FindControl("txtCantidadB");
                Label lblPrecio = (Label)item.FindControl("lblPrecioB");
                Label lblEstado = (Label)item.FindControl("lblEstado");

                string Nombre = e.CommandArgument.ToString();
                int Cantidad = int.Parse(txtCantidadB.Text);
                decimal Precio;
                decimal.TryParse(lblPrecio.Text, out Precio);

                int stockDispo = negStock.ObtenerStock(Nombre);

              
                if (Cantidad > stockDispo)
                {
                    Response.Write("<script>alert('La cantidad ingresada supera el stock disponible.');</script>"); 
                }
                else
                {
                    List<Producto> carrito = ObtenerCarritoDesdeSesion();

                    Producto producto = new Producto
                    {
                        nombre = Nombre,
                        stock = Cantidad,
                        precio = Precio
                    };

                    carrito.Add(producto);

                    GuardarCarritoEnSesion(carrito);
                    GuardarCarritoEnCookie(carrito);

                    int nuevoStock = stockDispo - Cantidad;
                    negStock.ActualizarStock(Nombre, nuevoStock);
                    if (nuevoStock <= 0 )
                    {
                        Response.Write("<script>alert('El producto ha sido agotado.');</script>");
                    }

                }
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
   
