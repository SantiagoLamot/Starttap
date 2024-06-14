using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Roles
    {
        private int _IdRol;
        private string _Cargo;

        public Roles() { }

        public Roles(int IdRol, string Cargo) 
        {
            _IdRol = IdRol;
            _Cargo = Cargo;
        }
        public int IdRol
        {
            get { return _IdRol; }
            set { _IdRol = value; }
        }
        public string Cargo
        {
            get { return _Cargo; }
            set { _Cargo = value; }
        }
    }
}
