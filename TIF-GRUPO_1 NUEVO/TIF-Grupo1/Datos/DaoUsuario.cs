using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class DaoUsuario
    {
        AccesoDatos dt = new AccesoDatos();

        public Boolean IntentoIniciarSesionCliente(Usuario usuario)
        {
            String consulta = "select * from Usuario where Email='" + usuario.email + "' and Contraseña='" + usuario.contraseña + "'";
            return dt.existe(consulta);
        }

        public int DetectarTipoUsuario(Usuario usuario)
        {

            string consulta = "SELECT Usuario_Tipos.IdTipos FROM Usuario INNER JOIN Usuario_Tipos ON Usuario.IdUsuario = Usuario_Tipos.IdUsuario Where Email = '" + usuario.email + "' ";
            return dt.TipoUsuarioLeido(consulta);
        }

        public Usuario ObtenerDatosUsuario(Usuario usuario)
        {
            string consulta = "SELECT Nombre, Apellido, Email, IdUsuario from Usuario  WHERE Email = '" + usuario.email + "'";
            return dt.DatosUsuario(consulta);
        }
        public Usuario BuscarUsuarioEmail(string Email)
        {
            return dt.ExisteUsuario($"Select * from Usuario where Email = '{Email}'");
        }

    }
}
