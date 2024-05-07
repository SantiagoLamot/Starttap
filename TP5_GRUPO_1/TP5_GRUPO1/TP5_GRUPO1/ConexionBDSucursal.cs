using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;

namespace TP5_GRUPO1
{
    public class ConexionBDSucursal
    {
        private const string cadenaConexion = @"Data Source=localhost;Initial Catalog=BDSucursales;Integrated Security=True";

        public int ejecutarConsulta(string QuerySQL)
        {
           SqlConnection conexion = new SqlConnection(cadenaConexion);
           conexion.Open();

           SqlCommand command = new SqlCommand(QuerySQL, conexion);

           int rowAffected = command.ExecuteNonQuery();
     
           conexion.Close();

           return rowAffected;
        }
        public void ejecutarSelect(string consulta, DropDownList list, string dataTex, string dataValue)
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(cadenaConexion);
                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand(consulta, sqlConnection);
                SqlDataReader sqlReader = sqlCommand.ExecuteReader();
                list.DataSource = sqlReader;
                list.DataTextField = dataTex;
                list.DataValueField = dataValue;
                list.DataBind();
                sqlConnection.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine("\t\t***ERROR:" + e.Message +"***"); //Dejaria impreso en consola porque no se pudo ejecutar el ExecuteReader();
            }
        }
    }
}