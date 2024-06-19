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
        private string _Descripcion;
        private decimal _Precio;
        private Categoria _Categoria;
        private int _Stock;
        private string _ImagenURL;
        private bool _Estado;

        public Producto() { }

        public Producto(int idProducto, string nombre, string descripcion, decimal precio, Categoria categoria, int stock, string imagenURL, bool estado)
        {
            _idProducto = idProducto;
            _Nombre = nombre;
            _Descripcion = descripcion;
            _Precio = precio;
            _Categoria = categoria;
            _Stock = stock;
            _ImagenURL = imagenURL;
            _Estado = estado;
        }

        public int idProducto
        {
            get { return _idProducto; }
            set { _idProducto = value; }
        }

        public string nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }
        public string Descripcion
        {
            get { return _Descripcion; }
            set { _Descripcion = value; }
        }
        public decimal precio
        {
            get { return _Precio; }
            set { _Precio = value; }
        }

        public Categoria categoria
        {
            get { return _Categoria; }
            set { _Categoria = value; }
        }

        public int stock
        {
            get { return _Stock; }
            set { _Stock = value; }
        }

        public string imagenURL
        {
            get { return _ImagenURL; }
            set { _ImagenURL = value; }
        }

        public bool estado
        {
            get { return _Estado; }
            set { _Estado = value; }
        }
    }

}
