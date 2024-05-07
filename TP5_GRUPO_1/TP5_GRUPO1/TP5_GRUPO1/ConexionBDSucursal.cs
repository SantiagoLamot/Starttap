using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Data;

namespace TP5_GRUPO1
{
    public class ConexionBDSucursal
    {
        private const string cadenaConexion = "Data Source=localhost\\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True";

        public int ejecutarConsulta(string QuerySQL)
        {
           SqlConnection conexion = new SqlConnection(cadenaConexion);
           conexion.Open();

           SqlCommand command = new SqlCommand(QuerySQL, conexion);

           int rowAffected = command.ExecuteNonQuery();
     
           conexion.Close();

           return rowAffected;
        }
    }
}