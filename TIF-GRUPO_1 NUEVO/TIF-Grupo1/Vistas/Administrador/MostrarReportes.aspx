<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarReportes.aspx.cs" Inherits="Vistas.Administrador.MostrarReportes" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tablero de Ventas</title>
<link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>

    <style type="text/css">
        .auto-style1 {
            width: 919px;
        }
        .auto-style2 {
            display: flex;
            justify-content: center; /* Centra horizontalmente */;
            align-items: center; /* Centra verticalmente si es necesario */;
        }
    </style>

</head>
<body class="bodyBlanco">
    <form id="form1" runat="server" class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Reportes" CssClass="labelPrincipal"></asp:Label>
        <asp:RadioButton ID="rbVentasPorFechas" runat="server" text="Ventas por rango de fechas" AutoPostBack="True" GroupName="MostrarDatos" OnCheckedChanged="rbVentasPor_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rbVentasPorRangoMonto" runat="server" text="Ventas por rango de montos" AutoPostBack="True" GroupName="MostrarDatos" OnCheckedChanged="rbVentasPorRangoMonto_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rbProductoMasVendido" runat="server" text="Producto mas vendido" AutoPostBack="True" GroupName="MostrarDatos" OnCheckedChanged="rbProductoMasVendido_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rbProductoMasVendidoPorMes" runat="server" text="Producto mas vendido por mes" AutoPostBack="True" GroupName="MostrarDatos" OnCheckedChanged="rbProductoMasVendidoPorMes_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rbProductoMasVendidoPorCategoria" runat="server" text="Producto mas vendido por categoria" AutoPostBack="True" GroupName="MostrarDatos" OnCheckedChanged="rbProductoMasVendidoPorCategoria_CheckedChanged"/>
        <br />
        <asp:RadioButton ID="rbDiaDelMesConMasVentas" runat="server" text="Dia del mes con mas ventas" AutoPostBack="True" GroupName="MostrarDatos" OnCheckedChanged="rbDiaDelMesConMasVentas_CheckedChanged"/>
        <br />
        <asp:Label ID="lFechaDesde" runat="server" Text="Desde fecha: "></asp:Label>
        <asp:TextBox ID="tbDesdeFecha" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Label ID="lFechaHasta" runat="server" Text="hasta: "></asp:Label>
        <asp:TextBox ID="tbHastaFecha" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <asp:Label ID="lMondoDesde" runat="server" Text="Desde monto: "></asp:Label>
        <asp:TextBox ID="tbDesdeMonto" runat="server" CssClass="TextBoxChico" ></asp:TextBox>
        <asp:Label ID="lMontoHasta" runat="server" Text="hasta: "></asp:Label>
        <asp:TextBox ID="tbHastaMonto" runat="server" CssClass="TextBoxChico"></asp:TextBox>
        <br />
        <asp:Label ID="lCategorias" runat="server" Text="Seleccionar categoria"></asp:Label>
        <asp:DropDownList ID="ddlCategorias" runat="server" AutoPostBack="True" >
        </asp:DropDownList>
        <br />
        <asp:Label ID="lMes" runat="server" Text="Seleccionar mes"></asp:Label>
        <asp:TextBox ID="tbMes" runat="server" TextMode="Month"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" CssClass="BotonPrincipal" ValidationGroup="gpMostrar" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbHastaMonto" ValidationExpression="^\d+(?:\.\d+)?$" ValidationGroup="gpMostrar"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbDesdeMonto" ValidationExpression="^\d+(?:\.\d+)?$" ValidationGroup="gpMostrar"></asp:RegularExpressionValidator>
        <div class="gridViewContainer">
        <asp:GridView ID="gvTabla" runat="server" CssClass="auto-style2" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="915px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </div>
            
        <asp:Label ID="idInfo" runat="server"></asp:Label>
        </form>
</body>
</html>