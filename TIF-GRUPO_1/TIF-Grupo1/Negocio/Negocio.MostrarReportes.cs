using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;


namespace Negocio
{

    public class MostrarReportes
    {
        DaoProductos daoProductos = new DaoProductos();
        
        public DataTable MostrarProductos() 
        {
            return daoProductos.MostrarProductos();
        }

    }
}
