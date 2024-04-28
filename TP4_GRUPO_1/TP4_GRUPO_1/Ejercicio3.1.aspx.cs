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
        private const string cadenaConexionLibreria = "Data Source=localhost;Initial Catalog=Libreria;Integrated Security=True";
       SqlConnection sqlLibreriaConnection = new SqlConnection(cadenaConexionLibreria);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection sqlLibreriaConnection = new SqlConnection(cadenaConexionLibreria);
                sqlLibreriaConnection.Open();

                if (Session["ConsultaLibros"] == null)
                {
                    string consulta = Session["ConsultaLibros"].ToString();

                    SqlDataAdapter adapter = new SqlDataAdapter(consulta, sqlLibreriaConnection);

                    DataSet dataSet = new DataSet();
                    adapter.Fill(dataSet, "TablaLibros");

                    gvLibros.DataSource = dataSet.Tables["TablaLibros"];
                    gvLibros.DataBind();
                }

            }
        }

            protected void LinkButton1_Click(object sender, EventArgs e)
            {
                
            }
        }
    } 