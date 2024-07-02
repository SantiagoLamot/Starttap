using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class negOrdenes
    {
        public class NegocioOrdenes
        {
            DaoOrdenes daoOrdenes = new DaoOrdenes();
            DaoUsuario usada = new DaoUsuario();
            public int CargarOrdenes(List<Producto> carrito, int id)
            {
                return daoOrdenes.CrearOrden(carrito, id);
            }

            public int CargarCarrito(int ordenId, List<Producto> carrito)
            {
                return daoOrdenes.CargarListProducto(ordenId, carrito);
            }

            public Usuario ObtenerDatosUsuario(string Email)
            {
                return usada.BuscarUsuarioEmail(Email);
            }
            public DataTable MostrarOrdenens(string estado, int? idMesa, DateTime? fecha)
            {
                return daoOrdenes.CargarSolicitudPedidos(estado, idMesa, fecha);
            }

            public int CambiarEstadoOrdenComanda(int id)
            {
                return daoOrdenes.CambiarEstadoOrdenComanda(id);
            }
            public DataTable ObtenerMesas()
            {
                return daoOrdenes.ObtenerMesas();
            }
            public int ObtenerStock(string Nombre)
            {
                return daoOrdenes.ObtenerStock(Nombre);
            }
            public void ActualizarStock(string Nombre, int NStock)
            {
                daoOrdenes.ActualizarStock(Nombre, NStock);
            }
            public DataTable VerEstado(int idOrden)
            {
                return daoOrdenes.VerEstado(idOrden);
            }

            
        }
    }
}