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
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 279px;
        }
        .auto-style3 {
            width: 31px;
        }
        .auto-style4 {
            width: 31px;
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
            width: 277px;
        }
        .auto-style7 {
            width: 277px;
        }
        .auto-style8 {
            width: 121px;
        }
        .auto-style9 {
            height: 25px;
            width: 216px;
        }
        .auto-style10 {
            width: 216px;
        }
        .auto-style11 {
            height: 25px;
            width: 128px;
        }
        .auto-style12 {
            width: 128px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            width: 31px;
            height: 23px;
        }
        .auto-style15 {
            width: 277px;
            height: 23px;
        }
        .auto-style16 {
            width: 216px;
            height: 23px;
        }
        .auto-style17 {
            width: 128px;
            height: 23px;
        }
        .auto-style18 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="lkAgregarSucursal" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Agregar Sucursal" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="lkListado" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Listar Sucursales" Height="21px" Width="139px" NavigateUrl="~/ListadodeSucursales.aspx">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="lkELiminar" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Eliminar Sucursal" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Text="Listado de sucursales"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9"></td>
                <td class="auto-style11"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Busqueda, ingrese ID de sucursal:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtIDbuscar" runat="server" Width="191px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" ValidationGroup="GFiltro" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar Todos" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIDbuscar" ErrorMessage="*Debe Ingresar un Numero" ValidationExpression="^[0-9,$]*$" ValidationGroup="GFiltro"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="revIDBuscar" runat="server" ControlToValidate="txtIDbuscar" ErrorMessage="*Ingrese un ID" ValidationGroup="GFiltro">*Ingrese un ID</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblNoExiste" runat="server"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td colspan="4">
                    <asp:GridView ID="gvSucursales" runat="server">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
