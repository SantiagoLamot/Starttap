using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Reserva
    {
        public int IdReserva { get; set; }
        public int IdUsuario { get; set; }
        public int IdMesa { get; set; }
        public DateTime Fecha { get; set; }
        public int Comensales { get; set; }
        public bool Estado { get; set; }

        public Reserva()
        {

        }

        public Reserva(int _IdUsuario, int _IdMesa, DateTime _Fecha, int _Comensales)
        {
            IdUsuario = _IdUsuario;
            IdMesa = _IdMesa;
            Fecha = _Fecha;
            Comensales = _Comensales;
        }

        public Reserva(int _IdUsuario, int _IdMesa, DateTime _Fecha, int _IdReserva, int _Comensales, bool _Estado) : this(_IdUsuario, _IdMesa, _Fecha, _Comensales)
        {
            IdReserva = _IdReserva;
            Estado = _Estado;
        }
    }
}
