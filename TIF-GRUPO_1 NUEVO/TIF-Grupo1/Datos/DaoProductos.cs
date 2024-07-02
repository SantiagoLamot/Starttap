using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;


namespace Datos
{
    public class DaoProductos
    {
        AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable MostrarProductos() 
        {
            return accesoDatos.ObtenerTabla("Productos", "select * from Productos");
        }

        public void cargarDropDownListCategoria(ref DropDownList ddl)
        {
            accesoDatos.cargarDropDownList("select nombre, Idcategoria from Categoria", ref ddl);
        }

        public DataTable ProductoMasVendido()
        {
            return accesoDatos.ObtenerTabla("Productos", "select top 1 sum(PO.Cantidad) as cantidad, P.Nombre from [Productos_Orden] as PO inner join " +
                                            "Productos as P on PO.IdProducto = P.IdProducto group by p.Nombre order by cantidad desc");
        }

        public DataTable ProductoMasVendidoPorMes(string anio, string mes)
        {
            string consulta = "select top 1 P.Nombre, sum(PO.Cantidad) as cantidad from[Productos_Orden] as PO inner join Productos as P on PO.IdProducto = P.IdProducto " +
                "inner join Ordenes as O on PO.IdOrden = O.IdOrden WHERE YEAR(Fecha) = @Anio AND MONTH(Fecha) = @Mes group by p.Nombre order by cantidad desc";

            return accesoDatos.ObtenerTablaDosParametros("Productos", consulta, "@Anio", "@Mes", anio, mes);
        }

        public DataTable ProductoMasVendidoPorCategoria(string categoria)
        {
            string consulta = "select P.Nombre, SUM(PO.Cantidad) as Cantidad, C.Nombre as Categoria from [Productos_Orden] as PO inner join [Categoria_Productos] as CP on PO.IdProducto = CP.IdProducto " +
                "inner join Productos as P on PO.IdProducto = P.IdProducto inner join Categoria as C on CP.IdCategoria = C.IdCategoria where CP.IdCategoria = @IdCategoria group by P.Nombre, C.Nombre order by Cantidad desc";

            return accesoDatos.ObtenerTablaUnParametro("Productos", consulta, "@IdCategoria", categoria);
        }

        public int InsertarProductosYCategorias(Producto producto)
        {
            SqlCommand command = new SqlCommand();
            command.Parameters.AddWithValue("@Nombre", producto.nombre);
            command.Parameters.AddWithValue("@Descripcion", producto.Descripcion);
            command.Parameters.AddWithValue("@Precio", producto.precio);
            command.Parameters.AddWithValue("@Stock", producto.stock);
            command.Parameters.AddWithValue("@Imagen_URL", producto.imagenURL);
            command.Parameters.AddWithValue("@Estado", producto.estado);
            command.Parameters.AddWithValue("@IdCategoria", producto.categoria.idCategoria);


            return accesoDatos.EjecutarProcedimientoAlmacenado(command, "InsertarProductosYCategorias");
        }

        public bool ExisteProducto(string nombre)
        {
            return accesoDatos.existe($"Select * from Productos where Nombre = '{nombre}'");
        }

        public int ActualizarEstadoProducto(int idProducto)
        {
            return accesoDatos.updateCampo($"UPDATE Productos SET Estado = CASE WHEN Estado = 1 THEN 0 ELSE 1 END WHERE IdProducto = {idProducto}");
        }
    }
}
