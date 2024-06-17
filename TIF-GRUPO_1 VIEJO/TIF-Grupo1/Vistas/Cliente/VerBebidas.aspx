<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerBebidas.aspx.cs" Inherits="Vistas.Cliente.VerBebidas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>
</head>
<body class="bodyBlanco">
    <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Bebidas:" CssClass="labelPrincipal"></asp:Label>
            <br />
            <asp:DataList ID="DataList1" runat="server">
            </asp:DataList>
            <br />
            <asp:Label ID="LblMensaje" runat="server"></asp:Label>
            <br />
    </form>
</body>
</html>

