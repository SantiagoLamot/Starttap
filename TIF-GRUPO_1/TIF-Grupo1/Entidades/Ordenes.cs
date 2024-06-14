using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Ordenes
    {
        private int _IdOrden;
        private Usuario _Usuario;
        private Empleado _Empleado;
        private Mesas _Mesa;
        //Aca va la list class producto
        private DateTime _Fecha;
        private decimal _Total;
        private bool _EstadoComanda;
        private bool _EstadoPreparacion;

        public Ordenes() { }

        public Ordenes(int idOrden, Usuario usuario, Empleado empleado, Mesas mesa, /*Aca va Producto,*/ 
                        DateTime fecha, decimal total, bool estadoComanda, bool estadoPreparacion )
        {
            _IdOrden = idOrden;
            _Usuario = usuario;
            _Empleado = empleado;
            _Mesa = mesa;
            //Aca va producto
            _Fecha = fecha;
            _Total = total;
            _EstadoComanda = estadoComanda;
            _EstadoPreparacion = estadoPreparacion;
        }

        public int idOrden {
            get { return _IdOrden; }
            set { _IdOrden = value; }
        }
        public Usuario usuario {
            get { return _Usuario;}
            set { _Usuario = value; } 
        } 
        public Empleado Empleado {
            get { return _Empleado; }
            set { _Empleado = value; }
        }
        public Mesas Mesas {
            get { return _Mesa; }
            set { _Mesa = value; } 
        }
        //Aca va producto
        public DateTime fecha {
            get { return _Fecha; }
            set { _Fecha = value; }
        }
        public decimal total {
            get { return _Total; }
            set { _Total = value; }
        } 
        public bool estadoComanda {
            get { return _EstadoComanda; }
            set { _EstadoComanda = value; }
        }
        public bool estadoPreparacion {
            get {  return _EstadoPreparacion; }
            set { _EstadoPreparacion = value; }
        }

    }
}
