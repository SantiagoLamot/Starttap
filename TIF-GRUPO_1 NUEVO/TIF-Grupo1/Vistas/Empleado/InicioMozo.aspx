<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioMozo.aspx.cs" Inherits="Vistas.Empleado.InicioMozo" %>
<%@ Register Src="~/Empleado/VistaMenuEmpleado.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
</head>
    <header><uc:menu runat="server" /> </header>
<body class="bodyBlanco">
    <form id="form1" runat="server">
         <main class="menu-container"></main>
        <div>
            <asp:Label runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_CerrarSesion" runat="server" OnClick="btn_CerrarSesion_Click" Text="Cerrar Sesion" />
            <br />
            <br />
            <asp:Label runat="server" Text="Bienvenido "></asp:Label>
            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text=" al menu de Mozo"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_volver" runat="server" OnClick="btn_volver_Click" Text="Volver" />
            <br />
            <br />
            <asp:Label runat="server" Font-Bold="True" Text="Administracion de pedidos:"></asp:Label>
            <br />
            <asp:HyperLink ID="hp_SolicPedido" runat="server" NavigateUrl="~/Empleado/SolicitudesPedidos.aspx">Ver solicitudes de pedido</asp:HyperLink>
            <br />
            <asp:HyperLink ID="hp_Entregados" runat="server" NavigateUrl="~/Empleado/VerEntregadosFacturasMozo.aspx">Ver entregados y su facturacion</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="hp_AdmReserva" runat="server" Font-Bold="True" Text="Administracion de reservas:"></asp:Label>
            <br />
            <asp:HyperLink ID="hp_SoliReservas" runat="server" NavigateUrl="~/Empleado/SolicitudesReservas.aspx">Ver solicitudes de reservas</asp:HyperLink>
            <br />
            <asp:HyperLink ID="hp_VerReservsa" runat="server" NavigateUrl="~/Empleado/ListarReservas.aspx">Ver listado de reservas</asp:HyperLink>
        </div>
    </form>
</body>
</html>
