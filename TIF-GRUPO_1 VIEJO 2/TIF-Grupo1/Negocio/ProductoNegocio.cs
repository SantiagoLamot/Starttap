using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace Negocio
{
    public class ProductoNegocio
    {
        DaoProductos daoProductos = new DaoProductos();

        public void CargarDDLCategorias(ref DropDownList ddl)
        {
            daoProductos.cargarDropDownListCategoria(ref ddl);
        }
        public void InsertarProductosYCategorias(Producto producto)
        {
            daoProductos.InsertarProductosYCategorias(producto);
        }

        public bool ExisteProducto(string nombre)
        {
            return daoProductos.ExisteProducto(nombre);
        }
        public int ActualizarEstadoProducto(int idProducto)
        {
           return daoProductos.ActualizarEstadoProducto(idProducto);
        }
        
    }
}
