using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Net.NetworkInformation;

namespace TP4_GRUPO_1
{
    public partial class Ejercicio3 : System.Web.UI.Page
    {
        private const string cadenaConexionLibreria = @"Data Source=localhost;Initial Catalog=Libreria;Integrated Security=True";
        private string QuerySql = "Select * from Temas";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection sqlConnection = new SqlConnection(cadenaConexionLibreria);
                sqlConnection.Open();

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(QuerySql, sqlConnection);
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet, "TablaTemas");

                ddltemas.DataSource = dataSet.Tables["TablaTemas"];
                ddltemas.DataTextField = "Tema";
                ddltemas.DataValueField = "IdTema";
                ddltemas.DataBind();

                sqlConnection.Close();

            }

        }
        protected void ddltemas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lbVerLibros_Click(object sender, EventArgs e)
        {
            Server.Transfer("Ejercicio3.1.aspx");
        }
    }
}