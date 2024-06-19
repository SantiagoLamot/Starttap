using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoRegistro
    {
        AccesoDatos accesoDatos = new AccesoDatos();

        public int RegistroUsuarioNuevo(Usuario usuario)
        {
            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Nombre", usuario.nombre);
            command.Parameters.AddWithValue("@Apellido", usuario.apellido);
            command.Parameters.AddWithValue("@Email", usuario.email);
            command.Parameters.AddWithValue("@Contraseña", usuario.contraseña);
            command.Parameters.AddWithValue("@DNI", usuario.dni);
            command.Parameters.AddWithValue("@Telefono", usuario.telefono);
            command.Parameters.AddWithValue("@Direccion", usuario.direccion);
            //command.Parameters.AddWithValue("@RolID", usuario.rolID);

            return accesoDatos.EjecutarProcedimientoAlmacenado(command, "RegistroUsuarioNuevo");

        }
    }
}
