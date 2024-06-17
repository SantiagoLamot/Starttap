using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Mesas
    {
        private int _IdMesa;
        private int _Numero;
        private Usuario _Usuario;
        private decimal _DeudaTotal;
        public Mesas() { }

        public Mesas(int idMesa, int numero, Usuario usuario, decimal deudaTotal) {
        
            _IdMesa = idMesa;
            _Numero = numero;
            _Usuario = usuario;
            _DeudaTotal = deudaTotal;
        
        }

        public int idMesa { 
            get { return _IdMesa; }
            set { _IdMesa = value; }
        }
        public int numero {
            get { return _Numero; } 
            set { _Numero = value; }
        }
        public Usuario usuario {
            get { return _Usuario; }
            set { _Usuario = value; } 
        }
        public decimal deudaTotal {
            get { return _DeudaTotal; }
            set { _DeudaTotal = value; } 
        }
    }
}
