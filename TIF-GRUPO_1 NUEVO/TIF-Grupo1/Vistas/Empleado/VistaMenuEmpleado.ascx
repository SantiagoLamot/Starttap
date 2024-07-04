<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VistaMenuEmpleado.ascx.cs" Inherits="Vistas.Empleado.VistaMenu" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página</title>
   <%-- <link rel="stylesheet" type="text/css" href="../Estilos/StyleMenu.css"/>--%>
    <style type="text/css">
        .auto-style4 {
            left: 0px;
            top: 3px;
            height: 129px;
        }
        .nav-bar {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 50%;
    }

        .nav-list {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .nav-list li {
            margin-right: 20px; /* Espaciado entre elementos de la lista */
        }

        .nav-list li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
            padding: 10px;
            transition: background-color 0.3s;
        }

            .nav-list li a:hover {
                background-color: #4800ff; /* Color de fondo al pasar el mouse */
            }
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color:black;
            font-size: 8px;
            min-width: 40px;
            box-shadow: 0px 4px 8px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
            .dropdown-content a {
                color: black;
                padding: 6px 8px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

                .dropdown-content a:hover {
                    background-color: #f1f1f1;
                }

.dropdown:hover .dropdown-content {
    display: block;
}
    </style>

</head>
<body>
   <header>
        <div class="nav-container">
            <asp:Label ID="lblNombreUsuario" runat="server" CssClass="nombre-usuario"></asp:Label>
            <nav class="auto-style4">
                <ul class="nav-list">
                    <li><a href="InicioMozo.aspx">Inicio</a></li>
                    <li class= "dropdown">
                        <a href="InicioMozo.aspx" class="dropbtn">Mozo</a>
                        <div class="dropdown-content">
                            <a href="SolicitudesPedidos.aspx">Solicitudes de Pedidos</a>
                            <a href="SolicitudesReservas.aspx">Solicitud de Reservas</a>
                            <a href="ListarReservas.aspx">Lista de Reservas</a>
                            <a href="VerEntregadosFacturasMozo.aspx">Pedidos Entregados</a>
                        </div>
                        <li class= "dropdown">
                        <a href="CocinaVerPedidos.aspx" class="dropbtn">Cocinero</a>
                        <div class="dropdown-content">
                            <a href="CocinaVerPedidos.aspx">Cocina</a>
                            
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="icons-container">
   
            <br />
            <a href="../Login y Registro/Ingreso.aspx" class="icon-link" onclick="return confirmLogout();">
                <img width="26" height="26" src="https://img.icons8.com/ios-glyphs/30/logout-rounded-up.png" alt="logout"/>
    </a>
</div>
        </div>
    </header>
</body>
</html>
