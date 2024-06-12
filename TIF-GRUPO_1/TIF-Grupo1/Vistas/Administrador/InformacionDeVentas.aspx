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
        <asp:Label ID="Label1" runat="server" Text="Tabla de ventas" CssClass="labelPrincipal"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Ver:"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyperlinkParaListadoDeFunciones" >Ver cliente con mas reservas del mes</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="hyperlinkParaListadoDeFunciones" >Ver cliente con mas consumo en dinero en el mes</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="hyperlinkParaListadoDeFunciones" >Ver lo recaudado en el mes</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="hyperlinkParaListadoDeFunciones" >Producto mas vendido en el mes</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="hyperlinkParaListadoDeFunciones" >Producto menos vendido en el mes</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="hyperlinkParaListadoDeFunciones" >Dia con mas ventas en el mes</asp:HyperLink>
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="hyperlinkParaListadoDeFunciones" >Dia con menos ventas en el mes</asp:HyperLink>
            
        <asp:Label ID="lblDiaDeMayorVentas" runat="server" Text=""></asp:Label>
        </form>
</body>
</html>
