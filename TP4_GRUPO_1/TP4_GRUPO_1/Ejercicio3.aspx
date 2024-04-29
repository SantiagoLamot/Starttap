<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP4_GRUPO_1.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 7px;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            width: 112px;
        }
        .auto-style5 {
            width: 377px;
        }
        .auto-style1 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblSeleccionarTema" runat="server" Text="SELECCIONAR TEMA:" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#6600CC"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddltemas" runat="server" OnSelectedIndexChanged="ddltemas_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:LinkButton ID="lbVerLibros" runat="server" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#CC00FF" OnClick="lbVerLibros_Click">Ver Libros</asp:LinkButton>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </form>
</body>
</html>
