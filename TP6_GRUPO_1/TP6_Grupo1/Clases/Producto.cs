using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class Producto
    {
        //Propiedades
        private int _idProducto;
        private string _nombreProducto;
        private string _cantidadPorUnidad;
        private decimal _precioUnidad;

        /// METODOS CONSTRUCTORES
        public Producto()
        {
            
        }

        public Producto(int idProducto)
        {
            _idProducto = idProducto;
        }

        public Producto(int idProducto, string nombreProducto, string cantidadPorUnidad, decimal precioUnidad)
        {
            _idProducto = idProducto;
            _nombreProducto = nombreProducto;
            _cantidadPorUnidad = cantidadPorUnidad;
            _precioUnidad = precioUnidad;
        }

        /// METODOS GETTER Y SETTERS
        
        public int IdProducto
        {
            get
            {
                return _idProducto;
            }
            set
            {
                _idProducto = value;
            }
        }
        public string NombreProducto
        {
            get
            {
                return _nombreProducto;
            }
            set
            {
                _nombreProducto = value;
            }
        }
        public string CantidadPorUnidad
        {
            get
            {
                return _cantidadPorUnidad;
            }
            set
            {
                _cantidadPorUnidad = value;
            }
        }
        public decimal PrecioUnidad
        {
            get
            {
                return _precioUnidad;
            }
            set
            {
                _precioUnidad = value;
            }
        }
    }