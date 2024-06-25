<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VistaMenuEmpleado.ascx.cs" Inherits="Vistas.Empleado.VistaMenu" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página</title>
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleMenu.css"/>
    <style type="text/css">
        .auto-style4 {
            left: 0px;
            top: 3px;
            height: 129px;
        }
    </style>

</head>
<body>
   <header>
        <div class="nav-container">
            <nav class="auto-style4">
                <ul class="nav-list">
                    <li><a href="InicioEmpleado.aspx">Inicio</a></li>
                    <li class= "dropdown">
                        <a href="InicioMozo.aspx" class="dropbtn">Mozo</a>
                        <div class="dropdown-content">
                            <a href="SolicitudesPedidos.aspx">Solicitudes de Pedidos</a>
                            <a href="SolicitudesReservas.aspx">Solicitud de Reservas</a>
                            <a href="ListarReservas.aspx">Lista de Reservas</a>
                            <a href="VerEntregadosFacturasMozo.aspx">Pedidos Entregados</a>
                        </div>
                        <li class= "dropdown">
                        <a href="InicioCocinero.aspx" class="dropbtn">Cocinero</a>
                        <div class="dropdown-content">
                            <a href="CocinaVerPedidos.aspx">Cocina</a>
                            
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
</body>
</html>
