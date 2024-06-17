using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

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
        
        public DataTable ObtenerTablaUnParametro(String NombreTabla, String sql, String NomParam1, String valor1)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = PrepararAdaptadorUnParametro(Conexion, sql, NomParam1, valor1);
            adp.Fill(ds, NombreTabla);
            Conexion.Close();
            return ds.Tables[NombreTabla];
        }

        public DataTable ObtenerTablaDosParametros(String NombreTabla, String sql, String NomParam1, String NomParam2, String valor1, String Valor2)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = PrepararAdaptadorDosParametros(Conexion, sql, NomParam1, NomParam2, valor1, Valor2);
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

        public DropDownList cargarDropDownList(string consulta, ref DropDownList ddl)
        {
            SqlConnection connection = ObtenerConexion();
            SqlCommand sqlCommand = new SqlCommand(consulta, connection);
            SqlDataReader reader = sqlCommand.ExecuteReader();
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

        public SqlDataAdapter PrepararAdaptadorUnParametro(SqlConnection connection, string consulta, string param1, string valor1)
        {
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, connection);
            adaptador.SelectCommand.Parameters.AddWithValue(param1, valor1);
            return adaptador;
        }

        public SqlDataAdapter PrepararAdaptadorDosParametros(SqlConnection connection, string consulta, string param1, string param2, string valor1, string valor2)
        {
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, connection);
            adaptador.SelectCommand.Parameters.AddWithValue(param1, valor1);
            adaptador.SelectCommand.Parameters.AddWithValue(param2, valor2);
            return adaptador;
        }
    }
}
