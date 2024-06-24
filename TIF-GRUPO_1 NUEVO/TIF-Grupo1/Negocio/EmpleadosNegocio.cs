using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
using System.Web.UI.WebControls;

namespace Negocio
{
    public class EmpleadosNegocio
    {
        DaoEmpleados daoEmpleados = new DaoEmpleados();

        DaoReserva daoReserva = new DaoReserva();

        public DataTable MostrarEmpleados()
        {
            return daoEmpleados.MostrarEmpleado();
        }

        public DataTable getTabla()
        {
            return daoEmpleados.getTablaEmpleado();
        }

        public int ActualizarSalarioPorEmpleado(int id, decimal incremento)
        {
            return daoEmpleados.UpdateSalarioEmpleado(id, incremento);
        }


        public int IncrementarSalarioEmpleados(int id, decimal incremento)
        {
            return daoEmpleados.IncrementarSalario(id, incremento);
        }

        public int CambiarEstadoEmpleado(int id)
        {
            return daoEmpleados.UpdateEstadoEmpledo(id);
        }

        public DataTable SolicitudesDeReservasPendientes()
        {
            return daoReserva.SolicitudesDeReservasPendientes();
        }

        public int SetearEstadoReserva(int NuevoEstado, int IdReserva)
        {
            return daoReserva.SetearEstadoReserva(NuevoEstado, IdReserva);
        }

    }
}
