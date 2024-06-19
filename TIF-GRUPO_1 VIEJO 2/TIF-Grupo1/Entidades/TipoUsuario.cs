using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class TipoUsuario
    {
        private int _idTipo;
        private string _nombre; //Nombre del cargo
        
        public TipoUsuario()
        {

        }

        public TipoUsuario(int idTipo, string nombre)
        {
            _idTipo = idTipo;
            _nombre = nombre;
        }

        public int idTipo
        {
            get { return _idTipo; }
            set { _idTipo = value; }
        }

        public string nombre
        {
            get{ return _nombre; }
            set { _nombre = value; }
        }
    }
}
