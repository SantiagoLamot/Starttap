<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Tp2Ejercicio1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 196px;
        }
        .auto-style3 {
            width: 283px;
        }
        .auto-style4 {
            width: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">Ingrese nombre del producto:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtProducto1" runat="server" Width="269px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">Cantidad:</td>
                    <td>
                        <asp:TextBox ID="txtCantidad1" runat="server" Width="40px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Ingrese nombre del producto:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtProducto2" runat="server" Width="269px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">Cantidad:</td>
                    <td>
                        <asp:TextBox ID="txtCantidad2" runat="server" Width="40px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3">
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnGeneraTabla" runat="server" BorderStyle="Groove" Height="22px" OnClick="btnGeneraTabla_Click" Text="Generar Tabla" Width="114px" />
        <p>
            <asp:Label ID="lblTabla" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
