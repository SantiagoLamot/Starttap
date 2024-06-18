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
        AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable MostrarClientes()
        {
            return accesoDatos.ObtenerTabla("Clientes", "SELECT Usuario.* FROM Usuario LEFT JOIN Empleado ON Usuario.IdUsuario = Empleado.IdUsuario WHERE Empleado.IdUsuario IS NULL;");
        }

        public DataTable MostrarClientesSinContraseñaNiEmail()
        {
            return accesoDatos.ObtenerTabla("Clientes", "select u.IdUsuario, CONCAT(U.Nombre, ' ', u.Apellido) as NombreApellido, U.DNI, U.Direccion, U.Telefono from Usuario as U inner join Usuario_Tipos as UT on UT.IdUsuario = U.IdUsuario where UT.IdTipos = 3");
        }

        public DataTable MostrarClientesInactivosSinContraseñaNiEmail()
        {
            return accesoDatos.ObtenerTabla("Clientes", "select u.IdUsuario, CONCAT(U.Nombre, ' ', u.Apellido) as NombreApellido, U.DNI, U.Direccion, U.Telefono from Usuario as U inner join Usuario_Tipos as UT on UT.IdUsuario = U.IdUsuario where UT.IdTipos = 4");
        }

        public int DesacticvarCliente(int idCli)
        {
            return accesoDatos.updateCampo("update Usuario_Tipos set Usuario_Tipos.IdTipos = 4 where Usuario_Tipos.IdUsuario = " + idCli);
        }

        public int ActivarCliente(int idCli)
        {
            return accesoDatos.updateCampo("update Usuario_Tipos set Usuario_Tipos.IdTipos = 3 where Usuario_Tipos.IdUsuario = " + idCli);
        }
    }
}

