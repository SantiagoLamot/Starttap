using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;

namespace Negocio
{
    public class OrdenesNegocio
    {
        DaoOrdenes dao = new DaoOrdenes();

        public DataTable getTabla()
        {
            return dao.getTablaOrdenes();
        }

        public DataTable CargarOrden(int id)
        {
            return dao.CargarOrden(id);
        }

        public int CambiarEstadoOrden(int id)
        {
            return dao.CambiarEstadoOrden(id);
        }

        public DataTable getEntregados()
        {
            return dao.CargarEntregados();
        }

        public DataTable getOrden(int id)
        {
            return dao.getOrden(id);
        }

    }
}
