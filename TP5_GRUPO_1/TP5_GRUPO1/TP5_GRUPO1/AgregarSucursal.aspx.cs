using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO1
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        private ConexionBDSucursal ConexionBDSucursal = new ConexionBDSucursal();//Conexion a Base de Datos Sucursal
        private string QuerySQL;//Consulta SQL
        private int rowAffected;//Cantidad de columnas afectadas al ejecutar la consulta.

        //Conexion a base de datos creada, pasar por paramentro la consulta sql.
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                QuerySQL = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia";
                ConexionBDSucursal.ejecutarSelect(QuerySQL, ddlProvincia, "DescripcionProvincia", "Id_Provincia");
                QuerySQL = "SELECT Id_Horario, DescripcionHorario FROM Horario";
                ConexionBDSucursal.ejecutarSelect(QuerySQL, ddlHorario, "DescripcionHorario", "Id_Horario");
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            QuerySQL = "IF NOT EXISTS (SELECT 1 FROM Sucursal WHERE NombreSucursal = '" + tbNombreSucursal.Text.Trim() + "') " +
           "BEGIN " +
           "    INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_HorarioSucursal, Id_ProvinciaSucursal, DireccionSucursal) " +
           "    VALUES ('" + tbNombreSucursal.Text + "', '" + tbDescripcion.Text + "', " + ddlHorario.SelectedValue + ", " +
           "            " + ddlProvincia.SelectedValue + ", '" + tbDireccion.Text + "') " +
           "END";


            rowAffected = ConexionBDSucursal.ejecutarConsulta(QuerySQL);
            if (rowAffected > 0)
            {
                lblAgregadoExitoso.ForeColor = System.Drawing.Color.LimeGreen;
                lblAgregadoExitoso.Text = "Sucursal Agregada con Exito";
                limpiarTextboxes.LimpiatextBoxes(this);

            }
            else
            {
                lblAgregadoExitoso.ForeColor = System.Drawing.Color.IndianRed;
                lblAgregadoExitoso.Text = "La sucursal '" + tbNombreSucursal.Text + "' ya existe";
            }
        }
    }
}