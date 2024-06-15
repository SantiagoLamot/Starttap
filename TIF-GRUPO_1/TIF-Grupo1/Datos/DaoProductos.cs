using System;
using System.Collections.Generic;
using System.Data;
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
        public DropDownList cargarDropDownListCategoria()
        {
            return accesoDatos.cargarDropDownList("select nombre, Idcategoria from Categoria");
        }
    }
}
