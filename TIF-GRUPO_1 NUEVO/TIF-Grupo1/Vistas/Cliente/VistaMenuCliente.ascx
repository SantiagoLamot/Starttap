<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VistaMenuCliente.ascx.cs" Inherits="Vistas.Menu" %>
<%--<%@ Register Src="~/Menu.ascx" TagName="Menu" TagPrefix="uc" %>--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página</title>
    <script type="text/javascript">
        function confirmLogout() {
            return confirm('¿Estás seguro de que deseas cerrar sesión?');
        }
    </script>
    <link rel="stylesheet" type="text/css" href="Estilos/estilos.css"/>

</head>
<body>
    <header>
        <div class="nav-container">
            <nav class="auto-style1">
                <ul class="nav-list">
                    <li><a href="InicioCliente.aspx">Inicio</a></li>
                    <li><a href="/Cliente/SolicitudDeReserva.aspx">Reservas</a></li>
                    <li><a href="MenuPedidos.aspx">Menu</a></li>
                    <li><span id="usernamePlaceholder">@username</span></li>
                </ul>
            </nav>
            <div class="icons-container">
                <a href="CarritodePedidos.aspx" class="carrito-link">
                    <img width="26" height="26" src="https://img.icons8.com/metro/26/shopping-cart.png" alt="shopping-cart"/>
                </a>
                <br />
                <a href="../Login y Registro/Ingreso.aspx" class="icon-link" onclick="return confirmLogout();">
                    <img width="26" height="26" src="https://img.icons8.com/ios-glyphs/30/logout-rounded-up.png" alt="logout"/>
                </a>
            </div>
        </div>
    </header>
    <script type="text/javascript">
        
        var username = "@(Request.Cookies["NombreUsuario"] != null ? Request.Cookies["NombreUsuario"].Value :)";
        document.getElementById('usernamePlaceholder').textContent = username;
    </script>
</body>

</html>

