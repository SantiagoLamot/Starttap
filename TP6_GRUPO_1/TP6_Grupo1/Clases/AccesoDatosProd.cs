using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


    public class AccesoDatosProd
    {
        string rutaProductos = @"Data Source=ke\sqlexpress;Initial Catalog=Neptuno;Integrated Security=True";

        public AccesoDatosProd()
        {
            
        }

        public SqlConnection ObtenerConexion()
        {
            SqlConnection sqlConnection = new SqlConnection(rutaProductos);
            try
            {
                sqlConnection.Open();
                return sqlConnection;
            }
            catch (Exception exception)
            {
                return null;
            }
        }

        public SqlDataAdapter ObtenerAdaptador(string consultaSql)
        {
            SqlDataAdapter sqlDataAdapter;
            try
            {
                sqlDataAdapter = new SqlDataAdapter(consultaSql, ObtenerConexion());
                return sqlDataAdapter;
            }
            catch (Exception exception)
            {
                return null;
            }
        }

        public int EjecutarProcedimientoAlmacenado(SqlCommand comandoSQL, string nombreProcedimientoAlmacenado)
        {
            int FilasAfectadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand = comandoSQL;
            sqlCommand.Connection = Conexion;
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = nombreProcedimientoAlmacenado;
            FilasAfectadas = sqlCommand.ExecuteNonQuery();     
            Conexion.Close();
            return FilasAfectadas;
        }
    }
