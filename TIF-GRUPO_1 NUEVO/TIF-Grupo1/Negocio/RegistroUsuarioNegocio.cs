using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Web.UI.WebControls;

namespace Negocio
{
    public class RegistroUsuarioNegocio
    {
        DaoRegistro daoRegistro = new DaoRegistro();

        public void RegistroUsuarioNuevo(Usuario usuario)
        {
            daoRegistro.RegistroUsuarioNuevo(usuario);
        }

        public bool ExisteUsuario(string DNI)
        {
           return daoRegistro.RegistroExistente(DNI);
        }
    }
}
