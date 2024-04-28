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
        private const string cadenaConexionLibreria = "Data Source=localhost;Initial Catalog=Libreria;Integrated Security=True";
        SqlConnection sqlLibreriaConnection = new SqlConnection(cadenaConexionLibreria);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                SqlConnection sqlConnection = new SqlConnection(cadenaConexionLibreria);
                sqlLibreriaConnection.Open();

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("Select * from Temas", sqlLibreriaConnection);

                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet, "TablaTemas");

                ddltemas.DataSource = dataSet.Tables["TablaTemas"];
                ddltemas.DataTextField = "Tema";
                ddltemas.DataBind();


                sqlConnection.Close();

            }

        }

        protected void ddltemas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lbVerLibros_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(cadenaConexionLibreria);
            sqlLibreriaConnection.Open();
            string Consulta = "";

            if (ddltemas.SelectedValue == "Tema1")
            {
                Consulta = "Select * From Libros Where IdTema = 1";

            }
            if (ddltemas.SelectedValue == "Tema2")
            {
                Consulta = "Select * From Libros Where IdTema = 2";
            } 
            if (ddltemas.SelectedValue == "Tema3")
            {
                Consulta = "Select * From Libros Where IdTema = 3";
            }
 
            sqlConnection.Close();

            Session["ConsultaLibros"] = Consulta;
            Server.Transfer("Ejercicio3.1.aspx");

        }
    }
}