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

        }
    }
}