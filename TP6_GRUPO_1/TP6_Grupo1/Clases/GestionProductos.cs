using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

 public class GestionProductos
    {
        public GestionProductos()
        {
           
        }

        private DataTable ObtenerTabla(string tabla, string consultaSQL)
        {
            DataSet dataSet = new DataSet();
            AccesoDatosProd datos = new AccesoDatosProd();
            SqlDataAdapter sqlDataAdapter = datos.ObtenerAdaptador(consultaSQL);
            sqlDataAdapter.Fill(dataSet, tabla);
            return dataSet.Tables[tabla];
        }

        public DataTable MostrarProductos()
        {
            return ObtenerTabla("Productos", "SELECT IdProducto, NombreProducto, CantidadPorUnidad, PrecioUnidad From Productos");
        }

    private void ArmarParametrosProductosEliminar(ref SqlCommand Comando, Producto prod)
    {
        SqlParameter Parametros = new SqlParameter();
        Parametros = Comando.Parameters.Add("@IdProducto", SqlDbType.Int);
        Parametros.Value = prod.IdProducto;
    }

    public bool EliminarProducto(Producto prod)
    {
        SqlCommand sqlCommand = new SqlCommand();
        ArmarParametrosProductosEliminar(ref sqlCommand, prod);
        AccesoDatosProd accesoDatosProd = new AccesoDatosProd();
        int FilasAfectadas = accesoDatosProd.EjecutarProcedimientoAlmacenado(sqlCommand, "spEliminarProducto"); 
        if (FilasAfectadas == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}