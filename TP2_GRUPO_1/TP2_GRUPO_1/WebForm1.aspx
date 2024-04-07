<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP2_GRUPO_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 147px;
        }
        .auto-style3 {
            width: 222px;
        }
        .auto-style4 {
            width: 129px;
        }
        .auto-style6 {
            width: 222px;
            height: 29px;
        }
        .auto-style7 {
            width: 129px;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            width: 241px;
        }
        .auto-style10 {
            width: 241px;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre del producto"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtProducto" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Ingrese cantidad"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Text="Ingrese el nombre del producto"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtProducto2" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="Ingrese cantidad"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCantidad2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Label ID="lblMensaje" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnGenerar" runat="server" OnClick="btnGenerar_Click" Text="Generar tabla" Width="197px" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblTabla" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
