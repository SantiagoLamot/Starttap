using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Producto
    {
        private int _idProducto;
        private string _Nombre;
        private decimal _Precio;
        private Categoria _Categoria;
        private int _Stock;
        private bool _Estado;

        public Producto() { }

        public Producto (int idProducto, string nombre, decimal precio, Categoria categoria, int stock, bool estado)
        {
            _idProducto = idProducto;
            _Nombre = nombre;
            _Precio = precio;
            _Categoria = categoria;
            _Stock = stock;
            _Estado = estado;
        }

        public int idProducto { 
            get { return _idProducto; } 
            set { _idProducto = value; } 
        }

        public string nombre { 
            get { return _Nombre; } 
            set { _Nombre = value; }
        }

        public decimal precio { 
            get { return _Precio; } 
            set { _Precio = value; }
        }

        public Categoria categoria {
            get { return _Categoria; } 
            set { _Categoria = value; }
        }

        public int stock { 
            get { return _Stock; } 
            set {  _Stock = value; }
        }

        public bool estado { 
            get { return _Estado; } 
            set { _Estado = value; }
        }
    }   
    
}
