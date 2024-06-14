using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;


namespace Negocio
{

    public class MostrarReportesNegocio
    {
        DaoProductos daoProductos = new DaoProductos();
        DaoClientes daoClientes = new DaoClientes();
        
        public DataTable MostrarProductos() 
        {
            return daoProductos.MostrarProductos();
        }

        public DataTable MostrarClientes()
        {
            return daoClientes.MostrarClientes();
        }
    }
}
