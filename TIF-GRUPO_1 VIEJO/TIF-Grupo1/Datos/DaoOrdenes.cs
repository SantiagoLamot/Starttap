using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class DaoOrdenes
    {
        AccesoDatos accesoDatos = new AccesoDatos();
        public DataTable VentasPorRangoDeFechas(DateTime fe1, DateTime fe2)
        {
            string fecha = fe1.ToString("yyyy-dd-MM");
            string fecha2 = fe2.ToString("yyyy-dd-MM");

            string consulta = "SELECT * FROM Ordenes WHERE Fecha BETWEEN '" + fecha + "' AND '" + fecha2 + "';";
            return accesoDatos.ObtenerTabla("Ventas", consulta);
        }

        public DataTable VentasPorRangoDeMontos(string m1, string m2)
        {
            try
            {
                Decimal monto1 = Decimal.Parse(m1);
                Decimal monto2 = Decimal.Parse(m2);
                string consulta = "SELECT * FROM Ordenes WHERE Total BETWEEN " + monto1 + " AND " + monto2 + ";";
                return accesoDatos.ObtenerTabla("Ventas", consulta);
            }
            catch
            {
                return null;
            }
        }

        public DataTable DiaDeMasVentas(string Anio, string Mes)
        {
            string consulta = "SELECT TOP(1) Fecha AS Dia, SUM(Ordenes.Total) AS Montos FROM Ordenes WHERE YEAR(Fecha) = @Anio AND MONTH(Fecha) = @Mes GROUP BY Fecha ORDER BY Montos DESC";
            return accesoDatos.ObtenerTablaDosParametros("Tabla", consulta, "@Anio", "@Mes", Anio, Mes);
        }

    }

}
