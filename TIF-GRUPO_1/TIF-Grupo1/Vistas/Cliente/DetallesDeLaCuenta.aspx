<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetallesDeLaCuenta.aspx.cs" Inherits="Vistas.Cliente.DetallesDeLaCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="DETALLES DE LA CUENTA: Nº   "></asp:Label>
            <asp:Label ID="lblIdPedido" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvDetallesCuenta" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="NombreDelProducto"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Cantidad"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio"></asp:TemplateField>
                    <asp:TemplateField HeaderText="SubTotal"></asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
