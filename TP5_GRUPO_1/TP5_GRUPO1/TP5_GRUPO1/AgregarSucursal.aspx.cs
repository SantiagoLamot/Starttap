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
            QuerySQL = "INSERT INTO Sucursal" +
            "(NombreSucursal,DescripcionSucursal, Id_HorarioSucursal ,Id_ProvinciaSucursal, DireccionSucursal) " +
            "VALUES " +
            "('" + tbNombreSucursal.Text + "', '" + tbDescripcion.Text + "', " + ddlHorario.SelectedValue + ", " 
            + ddlProvincia.SelectedValue + ", '" + tbDireccion.Text + "')";
            
            rowAffected = ConexionBDSucursal.ejecutarConsulta(QuerySQL);
        }
    }
}