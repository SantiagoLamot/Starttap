<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP4_GRUPO_1.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style7 {
            width: 88px;
            height: 42px;
        }
        .auto-style12 {
            width: 118px;
            height: 42px;
            font-size: medium;
        }
        .auto-style13 {
            width: 118px;
        }
        .auto-style14 {
            color: #660066;
        }
        .auto-style16 {
            width: 118px;
            font-size: medium;
        }
        .auto-style19 {
            width: 118px;
            height: 43px;
            font-size: medium;
        }
        .auto-style20 {
            width: 88px;
            height: 43px;
        }
        .auto-style21 {
            height: 43px;
        }
        .auto-style22 {
            width: 140px;
        }
        .auto-style23 {
            width: 88px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style22" rowspan="5"></td>
                    <td class="auto-style19"><strong>Id Producto:</strong></td>
                    <td class="auto-style20">
                        <asp:DropDownList ID="ddlProducto" runat="server" Height="33px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="88px" CssClass="auto-style14">
                            <asp:ListItem Value="=">Igual a:</asp:ListItem>
                            <asp:ListItem Value="&gt;">Mayor a:</asp:ListItem>
                            <asp:ListItem Value="&lt;">Menor a:</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txtIdProd" runat="server" Height="30px" Width="38px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdProd" Display="Dynamic" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Small" ForeColor="#660066" ValidationExpression="(D-)?\d{1,2}">*El id debe ser un numero menor a 100</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style21"></td>
                    <td class="auto-style21"></td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Id Categoria:</strong></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlCategoria" runat="server" Height="33px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="88px" CssClass="auto-style14">
                            <asp:ListItem Value="=">Igual a:</asp:ListItem>
                            <asp:ListItem Value="&gt;">Mayor a:</asp:ListItem>
                            <asp:ListItem Value="&lt;">Menor a:</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtIdCat" runat="server" Height="30px" Width="38px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtIdCat" Display="Dynamic" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Small" ForeColor="#660066" ValidationExpression="(D-)?\d{1,2}">*El id debe ser un numero menor a 10</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style23">
                        <asp:Button ID="btnFiltro" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Filtrar" BorderStyle="Outset" ForeColor="#660066" />
                    </td>
                    <td>&nbsp;<asp:Button ID="btnQuitarFiltro" runat="server" Text="Quitar Filtro" OnClick="btnQuitarFiltro_Click" BorderStyle="Outset" ForeColor="#660066" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td colspan="3">
                        <asp:GridView ID="gvProductos" runat="server">
                            <AlternatingRowStyle BackColor="#660066" BorderColor="#660066" VerticalAlign="Middle" Wrap="False" />
                            <EditRowStyle BackColor="#660066" BorderStyle="None" />
                            <HeaderStyle BackColor="#000066" ForeColor="White" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
