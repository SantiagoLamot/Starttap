using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoProductos
    {
        AccesoDatos AccesoDatos = new AccesoDatos();
        public DataTable MostrarProductos() 
        {
            return AccesoDatos.ObtenerTabla("Productos", "select * from Productos");
        }
    }
}
