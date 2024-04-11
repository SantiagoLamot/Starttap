<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="TP2_GRUPO_1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EJERCICIO 4</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 421px;
            background-color: #26303D;
        }
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            width: 247px;
        }
        .auto-style4 {
            width: 247px;
            text-align: center;
        }
        .auto-style5 {
            font-weight: bold;
            color: #C691F4;
            font-size: medium;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style8 {
            position: static;
            margin-left: 15px;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="margin: 10px">
        <div class="auto-style7">

            <fieldset style="border-style: none; border-color: inherit; border-width: medium; align-content:center; padding: 20px; border-radius: 5px; background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); margin-right: inherit; margin-bottom: inherit;" class="auto-style8">
                <legend style="font-weight: bold; padding: 0 10px;">Ejercicios</legend>
                <asp:Button ID="btn1" runat="server" Text="1" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn1_Click" />
                <asp:Button ID="btn2" runat="server" Text="2" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn2_Click" />
                <asp:Button ID="btn3" runat="server" Text="3" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn3_Click" />
                <asp:Button ID="btn5" runat="server" Text="5" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn5_Click" />
               
                <br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:" CssClass="auto-style6" Font-Names="Arial Narrow"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Clave:" CssClass="auto-style6" Font-Names="Arial Narrow"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtClave" runat="server" Width="244px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <strong>
                        <asp:Button ID="btnValidar" runat="server" Text="Validar" OnClick="btnValidar_Click" Width="155px" BorderStyle="Solid" CssClass="auto-style5" Font-Names="Arial Narrow" />
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
               
            </fieldset>

            </div>
    </form>
</body>
</html>
