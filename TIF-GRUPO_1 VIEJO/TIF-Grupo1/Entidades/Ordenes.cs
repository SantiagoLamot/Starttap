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
        private List <Producto> _Productos;
        private DateTime _Fecha;
        private decimal _Total;
        private bool _EstadoComanda;
        private bool _EstadoPreparacion;

        public Ordenes() {
            _Productos = new List<Producto>();
        }

        public Ordenes(int idOrden, Usuario usuario, Empleado empleado, Mesas mesa, List<Producto> productos,
                        DateTime fecha, decimal total, bool estadoComanda, bool estadoPreparacion )
        {
            _IdOrden = idOrden;
            _Usuario = usuario;
            _Empleado = empleado;
            _Mesa = mesa;
            _Productos = productos ?? new List<Producto>();
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
        public List<Producto> productos
        {
            get { return _Productos; }
            set { _Productos = value ?? new List<Producto>(); }
        }
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
