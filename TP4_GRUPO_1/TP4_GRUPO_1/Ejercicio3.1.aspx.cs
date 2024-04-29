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
    public partial class Ejercicio3__1 : System.Web.UI.Page
    {
        private const string cadenaConexionLibreria = @"Data Source=localhost;Initial Catalog=Libreria;Integrated Security=True";
        private string QuerySql = "Select * from Libros Where 1=1";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                DropDownList ddlTemas = (DropDownList)PreviousPage.FindControl("ddlTemas");
                if (ddlTemas != null)
                {
                    SqlConnection sqlConnection = new SqlConnection(cadenaConexionLibreria);
                    sqlConnection.Open();

                    string Seleccion = ddlTemas.SelectedValue;
                    QuerySql += $" AND IdTema =  '{Seleccion}' ";

                    SqlDataAdapter adapter = new SqlDataAdapter (QuerySql, sqlConnection);
                    DataSet ds = new DataSet();
                    adapter.Fill (ds, "TablaLibros");

                    gvLibros.DataSource = ds.Tables["TablaLibros"];
                    gvLibros.DataBind();

                    sqlConnection.Close();
                }
            }
        }

            protected void LinkButton1_Click(object sender, EventArgs e)
            {
            Server.Transfer("Ejercicio3.aspx");  
            }
        }
    } 