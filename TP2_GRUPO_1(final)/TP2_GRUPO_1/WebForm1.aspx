<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP2_GRUPO_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EJERCICIO 1</title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 421px;
            margin-left: 0px;
            background-color: #26303D;
            margin-top: 3px;
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
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            color: #936BC8;
        }
        .auto-style13 {
            width: 241px;
            text-align: center;
        }
        .auto-style14 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style15 {
            margin-left: 15px;
            margin-top: 15px;
        }
        .auto-style16 {
            width: 241px;
            height: 41px;
        }
        .auto-style17 {
            width: 222px;
            height: 41px;
        }
        .auto-style18 {
            width: 129px;
            height: 41px;
        }
        .auto-style19 {
            height: 41px;
        }
    </style>
</head>
<body style="margin-left: 15px; margin-top: 15px">
    <form id="form1" runat="server" style="margin-right: 10px; margin-bottom: 10px;" class="auto-style15">
            <fieldset style="align-content:center; border: none; padding: 20px; border-radius: 5px; background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);" class="auto-style14">
                <legend style="font-weight: bold; padding: 0 10px;">Ejercicios</legend>
                <asp:Button ID="btn2" runat="server" Text="2" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn2_Click" />
                <asp:Button ID="btn3" runat="server" Text="3" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn3_Click" Height="44px" />
                <asp:Button ID="btn4" runat="server" Text="4" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn4_Click" />
                <asp:Button ID="btn5" runat="server" Text="5" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn5_Click" />
               
        <table class="auto-style1" style="margin-right: 20px; margin-bottom: 20px;" >
            <tr>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    </td>
                <td class="auto-style16">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre del producto" CssClass="auto-style11" Font-Names="Arial Narrow"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtProducto" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="Ingrese cantidad" CssClass="auto-style11" Font-Names="Arial Narrow"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style10">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Ingrese el nombre del producto" CssClass="auto-style11" Font-Names="Arial Narrow"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtProducto2" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Ingrese cantidad" CssClass="auto-style11" Font-Names="Arial Narrow"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCantidad2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td colspan="3">
                    <asp:Label ID="lblMensaje" runat="server" ForeColor="#CC0000" Font-Names="Arial Narrow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnGenerar" runat="server" OnClick="btnGenerar_Click" Text="Generar tabla" Width="242px" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#936BB3" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style13">
                    <strong>
                    <asp:Label ID="lblTabla" runat="server" CssClass="auto-style12"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
               
            </fieldset>
        </form>
</body>
</html>
