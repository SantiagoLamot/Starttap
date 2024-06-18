using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Empleados : Usuario
    {
        private int _IdEmpleado;
        private decimal _Salario;
        private Roles _Rol;
        private DateTime _FechaIngreso;
        private string _Horario;
        private bool _Estado;

        public Empleados()
        { }

        public Empleados(int IdEmplado, decimal Salario, Roles Rol, DateTime FechaIngreso, string Horario, bool Estado)
        {
            _IdEmpleado = IdEmplado;
            _Salario = Salario;
            _Rol = Rol;
            _FechaIngreso = FechaIngreso;
            _Horario = Horario;
            _Estado = Estado;
        }

        public Empleados(int IdEmplado, decimal Salario, Roles Rol, DateTime FechaIngreso, string Horario, bool Estado,
                        int idUsuario, string nombre, string apellido, string email, string contraseña, TipoUsuario tipoUsuario, string dni, string telefono, string direccion)
                        : base(idUsuario, nombre, apellido, email, contraseña, tipoUsuario, dni, telefono, direccion)
        {
            _IdEmpleado = IdEmplado;
            _Salario = Salario;
            _Rol = Rol;
            _FechaIngreso = FechaIngreso;
            _Horario = Horario;
            _Estado = Estado;
        }

        public int IdEmpleado
        {
            get { return _IdEmpleado; }
            set { _IdEmpleado = value; }
        }
        public decimal Salario
        {
            get { return _Salario; }
            set { _Salario = value; }
        }
        public Roles Rol
        {
            get { return _Rol; }
            set { _Rol = value; }
        }
        public DateTime FechaIngreso
        {
            get { return _FechaIngreso; }
            set { _FechaIngreso = value; }
        }

        public string Horario
        {
            get { return _Horario; }
            set { _Horario = value; }
        }
        public bool Estado
        {
            get { return _Estado; }
            set { _Estado = value; }
        }
    }
}
