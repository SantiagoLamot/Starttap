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
            command.Parameters.AddWithValue("@Nombre", nombre);
            command.Parameters.AddWithValue("@Apellido", apellido);
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@Contraseña", contraseña);
            command.Parameters.AddWithValue("@DNI", dni);
            command.Parameters.AddWithValue("@Telefono", telefono);
            command.Parameters.AddWithValue("@Direccion", direccion);
            command.Parameters.AddWithValue("@RolID", rolID);

            return accesoDatos.EjecutarProcedimientoAlmacenado(command, "RegistroUsuarioNuevo");






        }
    }
}
