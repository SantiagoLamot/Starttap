using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_GRUPO_1
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        private const string ConexionNeptuno = @"Data Source=localhost;Initial Catalog=Neptuno;Integrated Security=True;";
        private string QueryProductos = "SELECT * FROM productos";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                CargarGridW();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConexionNeptuno);
            connection.Open();

            string Query = CrearQuery();

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(Query, connection);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet, "TablaProductos");

            gvProductos.DataSource = dataSet.Tables["TablaProductos"];
            gvProductos.DataBind();

            connection.Close();

            txtIdProd.Text = "";
            txtIdCat.Text = "";

        }

        private void CargarGridW()
        {
            SqlConnection connection = new SqlConnection(ConexionNeptuno);
            connection.Open();

            SqlCommand sqlCommand = new SqlCommand(QueryProductos, connection);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            gvProductos.DataSource = reader;
            gvProductos.DataBind();
            connection.Close();

        }

        protected void btnQuitarFiltro_Click(object sender, EventArgs e)
        {
            CargarGridW();
        }

        private string CrearQuery()
        {
            string consulta = "SELECT * FROM productos where 1=1";

            string IdProd = txtIdProd.Text.Trim();
            string IdCateg = txtIdCat.Text.Trim();
            string operadorSeleccionado1 = ddlProducto.SelectedValue.ToString();
            string operadorSeleccionado2 = ddlCategoria.SelectedValue.ToString();



            if (!string.IsNullOrEmpty(IdProd))
            {

                consulta += $" AND IdProducto {operadorSeleccionado1} '{IdProd}'";
            }


            if (!string.IsNullOrEmpty(IdCateg))
            {
                consulta += $" AND IdCategoría {operadorSeleccionado2} '{IdCateg}' ";
            }


            return consulta;
        }
    }
}