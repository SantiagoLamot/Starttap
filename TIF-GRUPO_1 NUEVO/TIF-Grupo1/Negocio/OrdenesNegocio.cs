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


    }
}
