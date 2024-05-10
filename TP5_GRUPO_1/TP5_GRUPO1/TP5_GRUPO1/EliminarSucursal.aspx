<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO1.EliminarSucursal" %>

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
            font-size: x-large;
            height: 54px;
            text-align: left;
        }
        .auto-style4 {
            width: 188px;
            text-align: right;
            height: 47px;
        }
        .auto-style6 {
            height: 47px;
        }
        .auto-style7 {
            text-align: left;
            height: 47px;
        }
        .auto-style9 {
            width: 188px;
            height: 47px;
        }
        .auto-style10 {
            height: 54px;
        }
        .auto-style11 {
            width: 188px;
            height: 54px;
        }
        .auto-style12 {
            text-align: left;
            height: 54px;
        }
        .auto-style13 {
            font-size: large;
        }
        .auto-style14 {
            font-size: x-large;
            text-align: left;
            width: 368px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="lkAgregarSucursal" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Agregar Sucursal" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="lkListado" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Listar Sucursales" NavigateUrl="~/ListadodeSucursales.aspx">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="lkELiminar" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Eliminar Sucursal" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14" rowspan="4">&nbsp;</td>
                <td class="auto-style2" colspan="3"><strong>Eliminar Sucursal
            </strong></td>
            </tr>
            <tr>
                <td class="auto-style4">Ingresar ID sucursal&nbsp;&nbsp;</td>
                <td class="auto-style7">
            <asp:TextBox ID="txtIDSucursal" runat="server" Width="61px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revIngreseNumero" runat="server" ControlToValidate="txtIDSucursal" ErrorMessage="Ingrese un valor numerico" ValidationExpression="^[0-9,$]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style7">
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" OnClientClick="return confirm('¿Estás seguro de que deseas eliminar esta sucursal?');" Width="101px" />
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"><strong>
            <asp:Label ID="lblEliminacion" runat="server" CssClass="auto-style13"></asp:Label>
                    </strong></td>
                <td class="auto-style10"></td>
            </tr>
        </table>
    </form>
</body>
</html>
