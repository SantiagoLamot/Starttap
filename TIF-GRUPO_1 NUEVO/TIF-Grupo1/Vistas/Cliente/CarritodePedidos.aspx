<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarritodePedidos.aspx.cs" Inherits="Vistas.CarritodePedidos" %>
<%@ Register Src="~/Cliente/VistaMenuCliente.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0;
        }
        .auto-style2 {
            width: 318px;
        }
    </style>
    </head>

</head>
  <header><uc:menu runat="server" /> </header>
  
    <body class="bodyBlanco"/>
        <body>


    <form id="form1" runat="server" class="auto-style2">
        <div>
            <br />
            <br />
            <asp:Label ID="lblTituloCarrito" runat="server" Text="SU PEDIDO CONTIENE"></asp:Label>
            <br />
            <br />
        </div>
        <asp:GridView ID="gv_Ordenes" runat="server" AutoGenerateColumns="False" CssClass="auto-style1">
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
        <br />
        <div>
            <asp:Label ID="lblMensajeConfirmacion" runat="server" CssClass="mensaje-confirmacion"></asp:Label>
        </div>
    </form>
</body>
</html>
