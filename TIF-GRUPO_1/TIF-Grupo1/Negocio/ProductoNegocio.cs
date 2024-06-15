using Datos;
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

        public DropDownList CargarDDLCategorias()
        {
            return daoProductos.cargarDropDownListCategoria();
        }
    }
}
