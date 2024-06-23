<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CocinaVerPedidos.aspx.cs" Inherits="Vistas.Empleado.CocinaVerPedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" Text="Lista de pedidos:"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gv_ListaOrdenes" runat="server">
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
