<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioCliente.aspx.cs" Inherits="Vistas.Administrador.InicioCliente" %>--%>

<%@ Register Src="~/Cliente/VistaMenuCliente.ascx" TagName="Menu" TagPrefix="uc" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página</title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style type="text/css">
        .auto-style1 {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }
    </style>
</head>
<body class="bodyLogoColor">
        <uc:Menu runat="server" />
    <main>
    </main>
    <form id="form1" runat="server" class="formInicio">
        <h1>Bienvenido a Starttap</h1>
        <h2>Explora nuestros productos y realiza tus pedidos y reservas.</h2>
        <h3>Encuéntranos en: Tapalqué, 9 de Julio 456</h3>
        <h3>Comunícate al: 2281-463774</h3>
    </form>
</body>
</html>

