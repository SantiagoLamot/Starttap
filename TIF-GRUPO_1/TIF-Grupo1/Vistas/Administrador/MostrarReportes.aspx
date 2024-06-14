<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarReportes.aspx.cs" Inherits="Vistas.Administrador.MostrarReportes" %>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tablero de Ventas</title>
<link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>

    <style type="text/css">
        .auto-style1 {
            width: 433px;
        }
    </style>

</head>
<body class="bodyBlanco">
    <form id="form1" runat="server" class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Reportes" CssClass="labelPrincipal"></asp:Label>
        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Ver:"></asp:Label>
            
        <asp:Label ID="lblDiaDeMayorVentas" runat="server" Text=""></asp:Label>
        </form>
</body>
</html>
