using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        private int _idUsuario;
        public string _nombre;
        private string _apellido;
        private string _email;
        private string _contraseña;
        private TipoUsuario _tipoUsuario;
        private string _dni;
        private string _telefono;
        private string _direccion;
        private int _RolID;

        public Usuario()
        {
            
        }

        public Usuario(int idUsuario, string nombre, string apellido, string email, string contraseña, TipoUsuario tipoUsuario, string dni, string telefono, string direccion, int rolID)
        {
            _idUsuario = idUsuario;
            _nombre = nombre;
            _apellido = apellido;
            _email = email;
            _contraseña = contraseña;
            _tipoUsuario = tipoUsuario;
            _dni = dni;
            _telefono = telefono;
            _direccion = direccion;
            _RolID = rolID;
        }

        public Usuario(string Email, string Contraseña)
        {
            _email = Email;
            _contraseña = Contraseña;
        }

        public Usuario(string Email)
        {
            _email = Email;
        }

        public int idUsuario
        {
            get { return _idUsuario; }
            set { _idUsuario = value;  }
        }
        public string nombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        public string apellido
        {
            get { return _apellido; }
            set { _apellido = value; }
        }

        public string email
        {
            get { return _email; }
            set { _email = value; }
        }

        public string contraseña
        {
            get { return _contraseña; }
            set { _contraseña = value; }
        }

        public TipoUsuario tipoUsuario
        {
            get { return _tipoUsuario; }
            set { _tipoUsuario = value; }
        }

        public string dni
        {
            get { return _dni; }
            set { _dni = value; }
        }

        public string telefono
        {
            get { return _telefono; }
            set { _telefono = value; }
        }

        public string direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }

        
    }
}
