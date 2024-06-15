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
        <asp:TextBox ID="tbDesdeMonto" runat="server" TextMode="Number"></asp:TextBox>
        <asp:Label ID="lMontoHasta" runat="server" Text="hasta: "></asp:Label>
        <asp:TextBox ID="tbHastaMonto" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:Label ID="lCategorias" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="ddlCategorias" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Panel ID="PanelFiltros" runat="server">
        </asp:Panel>
        <br />
        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" OnPreRender="btnMostrar_PreRender" />
        <asp:GridView ID="gvTabla" runat="server">
        </asp:GridView>
        <br />
            
        <asp:Label ID="idInfo" runat="server"></asp:Label>
        </form>
</body>
</html>
