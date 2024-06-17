<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstadodePedidos.aspx.cs" Inherits="Vistas.EstadodePedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            STARTAT<br />
            BREWING CO.<br />
            <br />
            <br />
            Numero de Pedido:
            <asp:Label ID="lblNumerodePedido" runat="server"></asp:Label>
            <br />
            Su Pedido Esta:
            <asp:Label ID="lblEstadoPedido" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            TOTAL A PAGAR
            <asp:Label ID="lblTotalConsumido" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnSolicitudCierredeCuenta" runat="server" Text="Solicitar Cierre de Cuenta" />
            <br />
            <br />
            <asp:Label ID="lblMensajeSolicitud" runat="server"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
