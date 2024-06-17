using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;

namespace Negocio
{
    public class NegocioUsuario
    {
        DaoUsuario daoUsuario = new DaoUsuario();

        public NegocioUsuario() { }

        public bool IniciarSesion(Usuario usuario)
        {
            return daoUsuario.IntentoIniciarSesionCliente(usuario);
        }
        public int ObtenerTipoDeUsuario(Usuario usuario)
        {
            return daoUsuario.DetectarTipoUsuario(usuario);
        }

        public Usuario ObtenerDatosUsuario(Usuario usuario)
        {
            return daoUsuario.ObtenerDatosUsuario(usuario);
        }

    }
}
