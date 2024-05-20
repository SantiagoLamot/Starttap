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
        private int _idProveedor;
    private string nomProducto;
    private string cantPorUnidad;
    private decimal v;

    /// METODOS CONSTRUCTORES
    public Producto()
        {
            
        }

        public Producto(int idProducto)
        {
            _idProducto = idProducto;
        }

    public Producto(int idProducto, string nomProducto, string cantPorUnidad, decimal v) : this(idProducto)
    {
        this.nomProducto = nomProducto;
        this.cantPorUnidad = cantPorUnidad;
        this.v = v;
    }

    public Producto(int idProducto, int idProveedor, string nombreProducto, string cantidadPorUnidad, decimal precioUnidad)
        {
            _idProducto = idProducto;
            _nombreProducto = nombreProducto;
            _cantidadPorUnidad = cantidadPorUnidad;
            _precioUnidad = precioUnidad;
            _idProveedor = idProveedor;
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
        public int idProveedor
        {
            get
            {
                return _idProveedor;
            }set
            {
                _idProveedor = value;
            }
        }

    }