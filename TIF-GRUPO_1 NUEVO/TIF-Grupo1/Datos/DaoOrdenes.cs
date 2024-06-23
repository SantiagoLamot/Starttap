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

            string consulta = "SELECT CONCAT(U.Nombre, ' ' ,U.Apellido) as Cliente, (select concat(Us.Nombre, ' ', Us.Apellido) from Usuario as Us where Us.IdUsuario = E.IdEmpleado) as Empleado, " +
                "CONVERT(DATE, O.Fecha) as Fecha, O.Total as Monto FROM Ordenes as O inner join Usuario as U on O.IdUsuario = U.IdUsuario inner join Empleado as E on O.IdEmpleado = O.IdEmpleado " +
                "inner join Mesa as M on O.IdMesa = M.IdMesa WHERE O.Fecha BETWEEN '" + fecha + "' AND '" + fecha2 + "';";
            return accesoDatos.ObtenerTabla("Ventas", consulta);
        }

        public DataTable VentasPorRangoDeMontos(string m1, string m2)
        {
            try
            {
                Decimal monto1 = Decimal.Parse(m1);
                Decimal monto2 = Decimal.Parse(m2);
                string consulta = "SELECT CONCAT(U.Nombre, ' ' ,U.Apellido) as Cliente, (select concat(Us.Nombre, ' ', Us.Apellido) from Usuario as Us where Us.IdUsuario = E.IdEmpleado) as Empleado, " +
                    "CONVERT(DATE, O.Fecha) as Fecha, O.Total as Monto FROM Ordenes as O inner join Usuario as U on O.IdUsuario = U.IdUsuario inner join Empleado as E on O.IdEmpleado = O.IdEmpleado " +
                    "inner join Mesa as M on O.IdMesa = M.IdMesa WHERE O.Total BETWEEN " + monto1 + " AND " + monto2 + ";";
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

        public DataTable getTablaOrdenes()
        {
            DataTable tabla = accesoDatos.ObtenerTabla("Ordenes", "SELECT Usuario.Nombre, Usuario.Apellido, Ordenes.IdOrden, Ordenes.EstadoPreparacion FROM Ordenes  INNER JOIN Usuario ON Usuario.IdUsuario = Ordenes.IdUsuario WHERE EstadoComanda = 1 AND EstadoPreparacion = 0");
            return tabla;
        }

        public DataTable CargarOrden(int id)
        {
            DataTable tabla = accesoDatos.ObtenerTabla("Orden", "SELECT P.Nombre, PO.Cantidad FROM Ordenes AS O INNER JOIN Productos_Orden AS PO ON O.IdOrden = PO.IdOrden INNER JOIN Productos AS P ON PO.IdProducto = P.IdProducto Where O.IdOrden ="+ id + ";");
            return tabla;
        }

        public int CambiarEstadoOrden(int id)
        {
            return accesoDatos.updateCampo("UPDATE Ordenes SET EstadoPreparacion = 1 WHERE IdOrden =" + id);
        }

        public DataTable CargarEntregados()
        {
            DataTable tabla = accesoDatos.ObtenerTabla("Entregados", "select  O.IdOrden AS 'Numero de orden', (U.Nombre +' '+ U.Apellido) AS Cliente, O.IdMesa AS 'Mesa nº', O.Fecha AS 'Fecha de compra', O.Total  from Ordenes AS O INNER JOIN Usuario AS U ON O.IdUsuario = U.IdUsuario INNER JOIN Empleado as E ON O.IdEmpleado = E.IdEmpleado WHERE O.EstadoComanda = 1 AND O.EstadoPreparacion = 1");
            return tabla;
        }

        public DataTable getOrden(int id)
        {
            DataTable tabla = accesoDatos.ObtenerTabla("OrdenEspecifica", "select  O.IdOrden AS 'Numero de orden', (U.Nombre +' '+ U.Apellido) AS Cliente, O.IdMesa AS 'Mesa nº', O.Fecha AS 'Fecha de compra', O.Total  from Ordenes AS O INNER JOIN Usuario AS U ON O.IdUsuario = U.IdUsuario INNER JOIN Empleado as E ON O.IdEmpleado = E.IdEmpleado WHERE O.EstadoComanda = 1 AND O.EstadoPreparacion = 1 AND O.IdOrden = "+ id );
            return tabla;
        }

    }

}
