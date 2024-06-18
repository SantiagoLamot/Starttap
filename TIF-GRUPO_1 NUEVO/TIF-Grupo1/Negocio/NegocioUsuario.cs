using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;
using System.Data;

namespace Negocio
{
    public class NegocioUsuario
    {
        DaoClientes daoClientes = new DaoClientes();
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
        public DataTable cargarGridViewClientes()
        {
            return daoClientes.MostrarClientesSinContraseñaNiEmail();
        }

        public DataTable cargarGridViewClientesInactivos()
        {
            return daoClientes.MostrarClientesInactivosSinContraseñaNiEmail();
        }

        public int DesactivarUsuarioNegocio(int idCli)
        {
            return daoClientes.DesacticvarCliente(idCli);
        }

        public int ActivarClienteNegocio(int idCli)
        {
            return daoClientes.ActivarCliente(idCli);
        }
    }
}
