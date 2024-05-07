<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadodeSucursales.aspx.cs" Inherits="TP5_GRUPO1.ListadodeSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BDSUCURSALES</title>
    <style>
         body {
         text-align: center; 
        }
        .hipervinculo {
            color: blue;
            display: inline-block;
            margin-right: 5cm;
            text-align: center;
        }
        .hipervinculo:last-child {
            margin-right: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="lkAgregarSucursal" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Agregar Sucursal">Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="lkListado" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Listar Sucursales">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="lkELiminar" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Eliminar Sucursal">Eliminar Sucursal</asp:HyperLink>
        </div>
    </form>
</body>
</html>
