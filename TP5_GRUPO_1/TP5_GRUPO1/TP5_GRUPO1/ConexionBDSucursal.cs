using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;
using System.Drawing;

namespace TP5_GRUPO1
{
    public class ConexionBDSucursal
    {
        private const string cadenaConexion = @"Data Source=localhost\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True";
        int rowAffected = 0;
        public int ejecutarConsulta(string QuerySQL)
        {
            try
            {
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                conexion.Open();
                SqlCommand command = new SqlCommand(QuerySQL, conexion);
                rowAffected = command.ExecuteNonQuery();
                conexion.Close();
                return rowAffected;
            }
            catch (Exception ex)
            {
                Console.WriteLine("\t\t***ERROR:" + ex.Message + "***");
                return 0;
            }
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

        public bool ejecutarSelectGridView(string consulta, GridView gridView)
        {
            bool Existe = false;
            try
            {
                SqlConnection sqlConnection = new SqlConnection(cadenaConexion);
                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand(consulta, sqlConnection);
                SqlDataReader sqlReader = sqlCommand.ExecuteReader();

                Existe = sqlReader.HasRows;
                
                    gridView.DataSource = sqlReader;
                    gridView.DataBind();
 
                sqlConnection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("\t\t***ERROR:" + ex.Message + "***");
            }
            return Existe;
        }
    }
}