using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;


namespace Datos
{
    public class DaoEmpleados
    {



        AccesoDatos AccesoDatos = new AccesoDatos();
        public DataTable MostrarEmpleados()
        {
           // return AccesoDatos.ObtenerTabla("Empleados", "SELECT Usuario * FROM Usuario INNER JOIN Empleado ON Usuario.IdUsuario = Empleado.IdUsuario;");
        }    
    }
}
