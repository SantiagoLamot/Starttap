<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="Vistas.Menu" %>
<%--<%@ Register Src="~/Menu.ascx" TagName="Menu" TagPrefix="uc" %>--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página</title>
    <link rel="stylesheet" type="text/css" href="Estilos/estilos.css"/>
</head>
<body>
    <header>
        <div class="nav-container">
            <nav class="auto-style1">
                <ul class="nav-list">
                    <li><a href="InicioCliente.aspx">Inicio</a></li>
                    <li><a href="ReservaMesasCliente.aspx">Reservas</a></li>
                    <li><a href="MenuPedidos.aspx">Menu</a></li>
                    <li><a href="#">Contacto</a></li>
                </ul>
            </nav>
            <div class="carrito-container">
                <a href="CarritodePedidos.aspx" class="carrito-link">
                    <img width="26" height="26" src="https://img.icons8.com/metro/26/shopping-cart.png" alt="shopping-cart"/>
                </a>
            </div>
        </div>
    </header>
</body>
</html>

