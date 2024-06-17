using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
using System.Web.UI.WebControls;


namespace Negocio
{

    public class MostrarReportesNegocio
    {
        DaoProductos daoProductos = new DaoProductos();
        DaoClientes daoClientes = new DaoClientes();
        DaoOrdenes daoOrdenes = new DaoOrdenes();

        public DataTable MostrarProductos() 
        {
            return daoProductos.MostrarProductos();
        }

        public DataTable MostrarClientes()
        {
            return daoClientes.MostrarClientes();
        }

        public DataTable VentasPorRangoFechasNegocio(DateTime fe1, DateTime fe2)
        {
            return daoOrdenes.VentasPorRangoDeFechas(fe1, fe2);
        }
        public DataTable VentasPorRangoMontosNegocio(string m1, string m2)
        {
            return daoOrdenes.VentasPorRangoDeMontos(m1, m2);
        }
        public string DiaConMasVentas(DateTime fecha)
        {
            string Anio = fecha.ToString("yyyy");
            string Mes = fecha.ToString("MM");
            DataTable tabla = daoOrdenes.DiaDeMasVentas(Anio, Mes);
            if (tabla.Rows.Count > 0)
            {
                DateTime dia = DateTime.Parse(tabla.Rows[0][0].ToString());
                return "En el rango seleccionado (" + fecha.ToString("MMMM") + " del " + Anio + ") el dia con mas ventas fue el dia " + dia.ToString("dddd dd") + 
                    ", registrando ingresos por $" + tabla.Rows[0][1];
            }
            else
            {
                return "No hay ventas registradas en " + fecha.ToString("MMMM") + " del año " + Anio;
            }
        }
        public string NegocioProductoMasVendido()
        {
            DataTable tabla = daoProductos.ProductoMasVendido();
            return "El producto con mas ventas es: " + tabla.Rows[0][1].ToString().ToUpper() + " con " + tabla.Rows[0][0] + " ventas registradas.";
        }

        public string ProductoMasVendidoPorMes(DateTime fecha)
        {
            string Anio = fecha.ToString("yyyy");
            string Mes = fecha.ToString("MM");
            DataTable tabla = daoProductos.ProductoMasVendidoPorMes(Anio, Mes);
            if (tabla.Rows.Count > 0)
            {
                return "En el mes seleccionado (" + fecha.ToString("MMMM") + " del " + Anio + ") el producto mas vendido fue " + tabla.Rows[0][0].ToString().ToUpper() + 
                    ", con " + tabla.Rows[0][1] + " unidades vendidas";
            }
            else
            {
                return "No hay ventas registradas en " + fecha.ToString("MMMM") + " del año " + Anio;
            }

        }

        public string ProductoMasVendidoPorCategoria(String IdCategoria)
        {
            DataTable tabla = daoProductos.ProductoMasVendidoPorCategoria(IdCategoria);
            if (tabla.Rows.Count > 0 && Int32.Parse(tabla.Rows[0][1].ToString()) > 0)
            {
                return "El producto mas vendido de la categoria " + tabla.Rows[0][2].ToString().ToUpper() + " es el producto " + tabla.Rows[0][0].ToString().ToUpper() + " con " + 
                    tabla.Rows[0][1].ToString() + " unidades vendidas.";
            }
            else
            {
                return "No hay ventas registradas de productos de la categoria seleccionada";
            }

        }
    }
}
