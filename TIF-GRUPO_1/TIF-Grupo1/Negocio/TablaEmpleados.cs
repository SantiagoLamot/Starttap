using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
using System.Web.UI.WebControls;

namespace Negocio
{
    public class EmpleadosNegocio
    {
        DaoEmpleados daoEmpleados = new DaoEmpleados();

        public DataTable CargarEmpleados()
        {
            return daoEmpleados.MostrarEmpleados();
        }
    }
}
