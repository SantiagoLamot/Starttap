using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using Entidades;

namespace Datos
{
    class AccesoDatos
    {
        //Agregar nueva ruta de conexion
        String cadenaDeConexion = @"Data Source=localhost;Initial Catalog=Programacion3_TIF;Integrated Security=True";

        public AccesoDatos()
        {
            
        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(cadenaDeConexion);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        private SqlDataAdapter ObtenerAdaptador(String consultaSql, SqlConnection cn)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, cn);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(String NombreTabla, String Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(Sql, Conexion);
            adp.Fill(ds, NombreTabla);
            Conexion.Close();
            return ds.Tables[NombreTabla];
        }

        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }

        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }
            return estado;
        }
        public DropDownList cargarDropDownList(string consulta)
        {
            SqlConnection connection = ObtenerConexion();
            SqlCommand sqlCommand = new SqlCommand(consulta, connection);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            DropDownList ddl = new DropDownList();
            while (reader.Read())
            {
                string texto = reader.GetString(0); // Accede al primer campo como texto
                int valor = reader.GetInt32(1); // Accede al segundo campo como entero (ID)
                //para que funcionone que la consulta siempre sea select (campo texto), (campo value)
                // Crea un nuevo ListItem con el nombre del cliente como Text y el ID del cliente como Value
                ddl.Items.Add(new ListItem(texto, valor.ToString()));
            }
            connection.Close();
            return ddl;
        }

        public int TipoUsuarioLeido(string consulta)
        {
            SqlConnection connection = ObtenerConexion();
            SqlCommand sqlCommand = new SqlCommand(consulta, connection);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            int valor;
            if (reader.Read())
            {
                valor = reader.GetInt32(0);
                connection.Close();
                return valor;
            }
            return 0;
        }

        public Usuario DatosUsuario(string consulta)
        {
            Usuario datosUsuario = new Usuario();

            SqlConnection connection = ObtenerConexion();
            SqlCommand sqlCommand = new SqlCommand(consulta, connection);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            if (reader.Read())
            {
                datosUsuario.nombre = reader.GetString(0);
                datosUsuario.apellido = reader.GetString(1);
                datosUsuario.email = reader.GetString(2);
                connection.Close();
                return datosUsuario;
            }
            return null;
        }

        public int updateCampo(string consulta)
        {
            SqlConnection sqlConnection = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, sqlConnection);
            int filasAfectadas = cmd.ExecuteNonQuery();
            return filasAfectadas;
        }
    }
}
