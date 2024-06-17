using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoClientes
    {
        AccesoDatos AccesoDatos = new AccesoDatos();
        public DataTable MostrarClientes()
        {
            return AccesoDatos.ObtenerTabla("Clientes", "SELECT Usuario.* FROM Usuario LEFT JOIN Empleado ON Usuario.IdUsuario = Empleado.IdUsuario WHERE Empleado.IdUsuario IS NULL;");
        }

        public DataTable MostrarClientesSinContraseñaNiEmail()
        {
            return AccesoDatos.ObtenerTabla("Clientes", "select u.IdUsuario, CONCAT(U.Nombre, ' ', u.Apellido) as NombreApellido, U.DNI, U.Direccion, U.Telefono from Usuario as U inner join Usuario_Tipos as UT on UT.IdUsuario = U.IdUsuario where UT.IdTipos = 3");
        }
    }
}

