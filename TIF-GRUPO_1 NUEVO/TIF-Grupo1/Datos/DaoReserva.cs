using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Datos
{
    public class DaoReserva
    {
        AccesoDatos accesoDatos = new AccesoDatos();

        public int GrabarReserva(Reserva reserva)
        {
            string consulta = "INSERT INTO Reserva (IdUsuario, IdMesa, Fecha, Comensales) VALUES(" + reserva.IdUsuario + "," + reserva.IdMesa + ",'" + reserva.Fecha + "'," + reserva.Comensales + ")";
            return accesoDatos.EjecutarInsertUpdate(consulta);
        }

        public DataTable SolicitudesDeReservasPendientes()
        {
            return accesoDatos.ObtenerTabla("Reservas", "SELECT R.IdReserva, CONCAT(U.Nombre, ' ', U.Apellido) as Cliente, M.Numero as NumMesa, R.Fecha, R.Comensales FROM Reserva as R " +
                                             "inner join Usuario as U on U.IdUsuario = R.IdUsuario inner join Mesa as M on M.IdMesa = R.IdMesa where R.Estado is null");
        }

        public int SetearEstadoReserva(int NuevoEstado, int IdReserva)
        {
            string consulta = "update Reserva set Estado = " + NuevoEstado + " where IdReserva = " + IdReserva;
            return accesoDatos.EjecutarInsertUpdate(consulta);
        }

        public DataTable MostrarEstadoReservas(string condicion, string idCli)
        {
            string consulta = "SELECT M.Numero as NumMesa, R.Fecha, R.Comensales FROM Reserva as R inner join Usuario as U on U.IdUsuario = R.IdUsuario " +
                               "inner join Mesa as M on M.IdMesa = R.IdMesa where R.Estado " + condicion + " and R.IdUsuario = " + idCli;
            return accesoDatos.ObtenerTabla("EstadoReserva", consulta);
        }

        public DataTable MostrarReservasConfirmadas(string fecha)
        {
            string consulta = "SELECT CONCAT(U.Nombre,' ',U.Apellido) as Cliente, M.Numero AS NumMesa, R.Fecha, R.Comensales FROM Reserva AS R INNER JOIN Usuario AS U ON U.IdUsuario = R.IdUsuario INNER JOIN Mesa AS M ON M.IdMesa = R.IdMesa WHERE R.Estado = 1 AND CAST(R.Fecha AS DATE) = '" + fecha +"'";
            return accesoDatos.ObtenerTabla("Reservas", consulta);
        }
    }
}
