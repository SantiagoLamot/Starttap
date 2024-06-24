using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoMesas
    {
        AccesoDatos accesoDatos = new AccesoDatos();

        public DataTable CargarMesas(string fecha)
        {
            string consulta = "SELECT * FROM Mesa WHERE idMesa NOT IN (SELECT idMesa FROM Reserva WHERE Convert(date,Reserva.Fecha) = '" + fecha + "');";
            return accesoDatos.ObtenerTabla("Mesas", consulta);
        }
    }
}
