using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Security.Policy;

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

        public DataTable ObtenerProductos()
        {
        return ObtenerTabla("Productos", "select * from Productos");
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

    public bool EditarProducto(Producto pro)
    {
        SqlCommand sqlCommand = new SqlCommand();
        ArmarParametrosEditarProducto(ref sqlCommand, pro);
        AccesoDatosProd accesoDatosProd = new AccesoDatosProd();
        int filas = accesoDatosProd.EjecutarProcedimientoAlmacenado(sqlCommand, "spActualizarProducto");
        if(filas==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public void ArmarParametrosEditarProducto(ref SqlCommand sqlCommand, Producto pro)
    {
        SqlParameter sqlParameter = new SqlParameter();
        sqlParameter = sqlCommand.Parameters.Add("@IDPRODUCTO", SqlDbType.Int);
        sqlParameter.Value = pro.IdProducto;
        
        sqlParameter = sqlCommand.Parameters.Add("@NOMBREPRODUCTO", SqlDbType.VarChar, 40);
        sqlParameter.Value = pro.NombreProducto;
        
        sqlParameter = sqlCommand.Parameters.Add("@CANTPRODXUNI", SqlDbType.VarChar, 20);
        sqlParameter.Value = pro.CantidadPorUnidad;
        
        sqlParameter = sqlCommand.Parameters.Add("@PRECIOXUNIDAD", SqlDbType.Decimal);
        sqlParameter.Value = pro.PrecioUnidad;
    }
}