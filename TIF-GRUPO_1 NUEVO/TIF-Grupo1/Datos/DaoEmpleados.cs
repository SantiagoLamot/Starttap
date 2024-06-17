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

        //public DataTable MostrarEmpleados()
        //{
        //   // return AccesoDatos.ObtenerTabla("Empleados", "SELECT Usuario * FROM Usuario INNER JOIN Empleado ON Usuario.IdUsuario = Empleado.IdUsuario;");
        //}    

        public DataTable getTablaEmpleado()
        {
            DataTable tabla = AccesoDatos.ObtenerTabla("Empleados", "SELECT U.Nombre, U.Apellido, E.IdEmpleado, E.IdRol, E.Salario, E.Estado FROM Usuario AS U INNER JOIN Usuario_Tipos ON U.IdUsuario = Usuario_Tipos.IdUsuario INNER JOIN TiposUsuarios ON Usuario_Tipos.IdTipos = TiposUsuarios.IdTipos INNER JOIN Empleado as E ON U.IdUsuario = E.IdUsuario");
            return tabla;
        }

        public int UpdateEmpleado(int id, decimal salario)
        {
            return AccesoDatos.updateCampo("UPDATE Empleado SET Salario = " + salario + " WHERE IdEmpleado = " + id + ";");
        }
    }
}
