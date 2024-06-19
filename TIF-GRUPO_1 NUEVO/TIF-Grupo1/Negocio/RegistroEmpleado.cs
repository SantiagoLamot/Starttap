using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace Negocio
{
    public class RegistroEmpleado
    {
        DaoEmpleados daoEmpleado = new DaoEmpleados();
        public bool ExisteUsuario(string dni)
        {
            return daoEmpleado.ExisteUsuario(dni);
        }

        public Usuario ObtenerUsuario(string DNI)
        {
            return daoEmpleado.BuscarUsuario(DNI);
        }

        public DropDownList CargarddlRoles(ref DropDownList ddl)
        {
            return daoEmpleado.cargarddlRoles(ref ddl);
        }

        public void AgregarEmpleado(Empleados empleado)
        {
            daoEmpleado.AgregarEmpleado(empleado);

        }
        public int ExisteEmpleado(string dni)
        {
            return daoEmpleado.ExisteEmpleado(dni);
        }
    }
}
