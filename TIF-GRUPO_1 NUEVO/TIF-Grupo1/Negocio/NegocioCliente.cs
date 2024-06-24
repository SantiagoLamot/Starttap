using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidades;

namespace Negocio
{
    public class NegocioCliente
    {
        DaoMesas daoMesas = new DaoMesas();
        DaoReserva daoReserva = new DaoReserva();
        public NegocioCliente() { }
        public DataTable CargarMesas(DateTime fecha)
        {
            string fechaString = "''";
            if (fecha != null)
            {
                fechaString = fecha.ToString("yyyy-MM-dd");
            }
            return daoMesas.CargarMesas(fechaString);
        }

        public int CargarReserva(Reserva reserva)
        {
            return daoReserva.GrabarReserva(reserva);
        }

        public DataTable MostrarEstadoReservas(string condicion, string IdCli)
        {
            return daoReserva.MostrarEstadoReservas(condicion, IdCli);
        }
    }
}
