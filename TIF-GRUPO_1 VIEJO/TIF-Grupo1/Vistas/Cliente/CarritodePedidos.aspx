<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarritodePedidos.aspx.cs" Inherits="Vistas.CarritodePedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style1" Height="214px" Width="518px">
            <Columns>
                <asp:TemplateField HeaderText="Nombre del Producto"></asp:TemplateField>
                <asp:TemplateField HeaderText="Cantidad"></asp:TemplateField>
                <asp:TemplateField HeaderText="Precio"></asp:TemplateField>
                <asp:TemplateField HeaderText="Subtotal"></asp:TemplateField>
                <asp:TemplateField HeaderText="Modificar Cantidad"></asp:TemplateField>
                <asp:TemplateField HeaderText="Eliminar Pedido"></asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="btnConfirmarPedido" runat="server" Text="Confirmar Pedido" />
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
