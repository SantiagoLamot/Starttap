using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Categoria
    {
        private int _idCategoria;
        private string _Nombre; 

        public Categoria() { }

        public Categoria (int idCategoria, string nombre) 
        {
            _idCategoria = idCategoria;
            _Nombre = nombre;
        }

        public int idCategoria {
            get { return _idCategoria;} 
            set { _idCategoria = value; } 
        }

        public string nombre { 
            get { return _Nombre;} 
            set { _Nombre = value; } 
        }
    }

}
