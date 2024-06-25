<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioCocinero.aspx.cs" Inherits="Vistas.Empleado.InicioCocinero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 657px;
            margin-left: 109px;
            margin-right: 252px;
        }
    </style>
</head>
<body class="bodyBlanco">
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_CerrarSesion" runat="server" OnClick="btn_CerrarSesion_Click" Text="Cerrar Sesion" />
            <br />
            <br />
            <asp:Label runat="server" Text="Bienvenido "></asp:Label>
            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text=" al menu de Cocinero"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_volver" runat="server" OnClick="btn_volver_Click" Text="Volver" />
            <br />
            <br />
            <asp:Label runat="server" Font-Bold="True" Text="Administracion de pedidos:"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="hp_SolicPedido" runat="server" NavigateUrl="~/Empleado/CocinaVerPedidos.aspx">Ver pedidos</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
