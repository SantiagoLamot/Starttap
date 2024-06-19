using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

        public DataTable MostrarEmpleado()
        {
            return AccesoDatos.ObtenerTabla("Empleados", "SELECT CONCAT(U.Nombre, ' ', U.Apellido) AS Empleado, U.DNI, R.NombreRol AS Rol, E.Salario, E.FechaIngreso, E.Horarios, U.Telefono, E.Estado FROM Empleado E JOIN Usuario U ON E.IdUsuario = U.IdUsuario LEFT JOIN  Roles R ON E.IdRol = R.IdRol;");


        }

        public DataTable getTablaEmpleado()
        {
            DataTable tabla = AccesoDatos.ObtenerTabla("Empleados", "SELECT U.Nombre, U.Apellido, E.IdEmpleado, E.IdRol, E.Salario, E.Estado FROM Usuario AS U INNER JOIN Usuario_Tipos ON U.IdUsuario = Usuario_Tipos.IdUsuario INNER JOIN TiposUsuarios ON Usuario_Tipos.IdTipos = TiposUsuarios.IdTipos INNER JOIN Empleado as E ON U.IdUsuario = E.IdUsuario");
            return tabla;
        }

        public int UpdateSalarioEmpleado(int id, decimal salario)
        {
            return AccesoDatos.updateCampo("UPDATE Empleado SET Salario = " + salario + " WHERE IdEmpleado = " + id + ";");
        }

        public int IncrementarSalario(int id, decimal salario)
        {
            return AccesoDatos.updateCampo("UPDATE Empleado SET Salario = Salario + " + salario + " WHERE IdRol =" + id + ";");
        }

        public int UpdateEstadoEmpledo(int id)
        {
            return AccesoDatos.updateCampo("UPDATE Empleado SET Estado = CASE  WHEN Estado = 1 THEN 0 ELSE 1 END WHERE IdEmpleado =" + id + ";");
        }

        public bool ExisteUsuario(string DNI)
        {
            return AccesoDatos.existe($"Select * from Usuario where DNI = '{DNI}'");
        }

        public Usuario BuscarUsuario(string DNI)
        {
            return AccesoDatos.ExisteUsuario($"Select * from Usuario where DNI = '{DNI}'");
        }

        public int AgregarEmpleado(Empleados empleado)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@IdUsuario", empleado.idUsuario);
            cmd.Parameters.AddWithValue("@Salario", empleado.Salario);
            cmd.Parameters.AddWithValue("IdRol", empleado.Rol);
            cmd.Parameters.AddWithValue("FechaIngreso", empleado.FechaIngreso);
            cmd.Parameters.AddWithValue("Horarios", empleado.Horario);
            cmd.Parameters.AddWithValue("Estado", empleado.Estado);

            return AccesoDatos.EjecutarProcedimientoAlmacenado(cmd, "spInsertarEmpleado");
        }

        public DropDownList cargarddlRoles(ref DropDownList ddl)
        {
            return AccesoDatos.cargarDropDownList("Select NombreRol, IdRol from Roles", ref ddl);
        }
    }
}
