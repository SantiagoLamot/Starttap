using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;

namespace TP4_GRUPO_1
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        private const string cadenaConexionViajes = "Data Source=localhost;Initial Catalog=Viajes;Integrated Security=True";
        SqlConnection sqlViajesConnection = new SqlConnection(cadenaConexionViajes);

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                sqlViajesConnection.Open();

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Provincias", sqlViajesConnection);
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet, "Provincias");
                foreach (DataRow dataRow in dataSet.Tables["Provincias"].Rows)
                {
                    ddlProvInicial.Items.Add(new ListItem(dataRow["NombreProvincia"].ToString(), dataRow["IdProvincia"].ToString()));
                }

                sqlViajesConnection.Close();

                sqlViajesConnection.Open();

                sqlDataAdapter = new SqlDataAdapter("select * from Provincias", sqlViajesConnection);
                dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet, "Provincias");
                foreach (DataRow dataRow in dataSet.Tables["Provincias"].Rows)
                {
                    ddlProvFinal.Items.Add(new ListItem(dataRow["NombreProvincia"].ToString(), dataRow["IdProvincia"].ToString()));
                }
                sqlViajesConnection.Close();
            }

        }

        protected void ddlProvInicial_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlProvInicial.SelectedItem.Text != "--Seleccione una provincia--")
            {
                cargarlocalidadInicial();
                ddlProvFinal.Items.Clear();
                cargarProvinciaFinal();
                ddlProvFinal.SelectedIndex = -1;
            }
        }

        private void cargarProvinciaFinal()
        {
            ddlProvFinal.Items.Add(new ListItem("--Seleccione una provincia--", null));
            sqlViajesConnection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from Provincias", sqlViajesConnection);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet, "Provincias");
            foreach (DataRow dataRow in dataSet.Tables["Provincias"].Rows)
            {
                if (dataRow["IdProvincia"].ToString() != ddlProvInicial.SelectedValue.ToString())
                {
                    ddlProvFinal.Items.Add(new ListItem(dataRow["NombreProvincia"].ToString(), dataRow["IdProvincia"].ToString()));
                }
            }
            sqlViajesConnection.Close();
            
        }

        private void cargarlocalidadInicial()
        {
            sqlViajesConnection.Open();
            SqlCommand cmd = new SqlCommand("select * from Localidades where IdProvincia = @id", sqlViajesConnection);
            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter = cmd.Parameters.Add("@id", SqlDbType.Int);
            sqlParameter.Value = Convert.ToInt32(ddlProvInicial.SelectedValue.ToString());

            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            ddlLocalInicial.DataSource = sqlDataReader;
            ddlLocalInicial.DataTextField = "NombreLocalidad";
            ddlLocalInicial.DataValueField = "IdLocalidad";
            ddlLocalInicial.DataBind();

            sqlViajesConnection.Close();

        }

        protected void ddlProvFinal_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlProvFinal.SelectedItem.Text != "--Seleccione una provincia--")
            {
                cargarlocalidadFinal();
            }
        }
        private void cargarlocalidadFinal()
        {
            ddlLocalInicial.Items.Add(new ListItem("--Seleccione una localidad--", null));
            sqlViajesConnection.Open();
            SqlCommand cmd = new SqlCommand("select * from Localidades where IdProvincia = @id", sqlViajesConnection);
            SqlParameter sqlParameter = new SqlParameter();
            sqlParameter = cmd.Parameters.Add("@id", SqlDbType.Int);
            sqlParameter.Value = Convert.ToInt32(ddlProvFinal.SelectedValue);

            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            ddlLocalFinal.DataSource = sqlDataReader;
            ddlLocalFinal.DataTextField = "NombreLocalidad";
            ddlLocalFinal.DataValueField = "IdLocalidad";
            ddlLocalFinal.DataBind();

            sqlViajesConnection.Close();

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (ddlProvInicial.SelectedItem.Text != "--Seleccione una provincia--" && 
                ddlLocalInicial.SelectedItem.Text != "--Seleccione una localidad--" && 
                ddlProvFinal.SelectedItem.Text != "--Seleccione una provincia--" && 
                ddlLocalFinal.SelectedValue != "--Seleccione una localidad--")
            {
                lblMensaje.Text = "⏳ Buscando viajes desde " + ddlLocalInicial.SelectedItem.Text + ", " + ddlProvInicial.SelectedItem.Text + 
                    " hasta " + ddlLocalFinal.SelectedItem.Text + ", " + ddlProvFinal.SelectedItem.Text + " ✈︎ ✈︎ ✈︎";
                lblMensaje.ForeColor = ColorTranslator.FromHtml("#007bff");
            }
            else
            {
                lblMensaje.Text = "La seleccion esta incompleta";
                lblMensaje.ForeColor = Color.Red;
            }
        }
    }
}