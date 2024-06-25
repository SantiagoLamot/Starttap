using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Negocio.negOrdenes;



namespace Vistas
{
    public partial class CarritodePedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCarrito();

            }
        }
        private void CargarCarrito()
        {
            HttpCookie carritoCookie = Request.Cookies["Carrito"];
            if (carritoCookie != null && carritoCookie["Productos"] != null)
            {
                List<Producto> carrito = new List<Producto>();

                var productos = carritoCookie["Productos"].Split(',');
                foreach (var productoData in productos)
                {
                    var datos = productoData.Split('|');
                    if (datos.Length == 3)
                    {
                        Producto producto = new Producto
                        {
                            nombre = datos[0],
                            stock = int.Parse(datos[1]),
                            precio = decimal.Parse(datos[2])
                        };
                        carrito.Add(producto);
                    }
                }

                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[]
                {
                    new DataColumn("Nombre del Producto"),
                    new DataColumn("Cantidad"),
                    new DataColumn("Precio"),
                    new DataColumn("Subtotal")
                });

                foreach (var producto in carrito)
                {
                    decimal subtotal = producto.stock * producto.precio;
                    dt.Rows.Add(producto.nombre, producto.stock, producto.precio, subtotal);
                }

                gv_Ordenes.DataSource = dt;
                gv_Ordenes.DataBind();
            }
        }

        private List<Producto> ObtenerCarritoDesdeGridView()
        {
            List<Producto> carrito = new List<Producto>();

            foreach (GridViewRow row in gv_Ordenes.Rows)
            {
                string nombre = row.Cells[0].Text;
                int stock = int.Parse(row.Cells[1].Text);
                decimal precio = decimal.Parse(row.Cells[2].Text);

                Producto producto = new Producto
                {
                    nombre = nombre,
                    stock = stock,
                    precio = precio
                };

                carrito.Add(producto);
            }

            return carrito;
        }
        private void LimpiarCarritoActual()
        {
            gv_Ordenes.DataSource = null;
            gv_Ordenes.DataBind();

            HttpCookie carritoCookie = new HttpCookie("Carrito");
            carritoCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(carritoCookie);
        }

        protected void btnConfirmarPedido_Click1(object sender, EventArgs e)
        {
            List<Producto> carrito = ObtenerCarritoDesdeGridView();
            NegocioOrdenes negocioOrdenes = new NegocioOrdenes();
            Usuario usuario = new Usuario();


            string email = (Request.Cookies["EmailUsuario"].Value);
            usuario = negocioOrdenes.ObtenerDatosUsuario(email);

            int idUsuario = usuario.idUsuario;

            int ordenId = negocioOrdenes.CargarOrdenes(carrito, idUsuario);
            if (ordenId > 0)
            {

                lblMensajeConfirmacion.Text = "SU CARRITO HA SIDO ENVIADO ESPERE LA CONFIRMACION.";
                LimpiarCarritoActual();
            }
            else
            {
                lblMensajeConfirmacion.Text = "Hubo un error al procesar su pedido. Por favor, intente nuevamente.";
            }
        }
    }
}
