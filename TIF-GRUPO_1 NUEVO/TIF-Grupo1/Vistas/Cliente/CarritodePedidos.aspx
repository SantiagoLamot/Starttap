<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarritodePedidos.aspx.cs" Inherits="Vistas.CarritodePedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            STARTAP<br />
            BREWING CO.<br />
            <br />
            <asp:Label ID="lblTituloCarrito" runat="server" Text="SU PEDIDO CONTIENE"></asp:Label>
            <br />
            <br />
        </div>
        <asp:GridView ID="gv_Ordenes" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="Nombre del Producto" HeaderText="Nombre del Producto" />
        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
        <asp:BoundField DataField="Precio" HeaderText="Precio" />
        <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" />
    </Columns>
</asp:GridView>

        <br />
        <br />
        <asp:Button ID="btnConfirmarPedido" runat="server" Text="Confirmar Pedido" OnClick="btnConfirmarPedido_Click1" />
        <div>
            <asp:Label ID="lblMensajeConfirmacion" runat="server" CssClass="mensaje-confirmacion"></asp:Label>
        </div>
    </form>
</body>
</html>
