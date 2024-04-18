<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Grupo2_TP3._1.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 549px;
            margin-left: 2px;
            margin-top: 0px;
            background-color: #1F1F1F;
            margin-right: 1px;
        }
        .auto-style2 {
            text-align: center;
            width: 1465px;
            height: 227px;
        }
        .auto-style3 {
            width: 1465px;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            width: 1915px;
            height: 933px;
            margin-left: 7px;
            margin-right: 0px;
            margin-top: 0px;
            margin-bottom: 210px;
            background-color: #012847;
        }
        .auto-style6 {
            text-align: center;
            height: 223px;
            margin-left: 11px;
        }
    </style>
</head>
<body style="margin-left: 0px">
    <form id="form1" runat="server" class="auto-style5">
            <div class="auto-style6">
                <asp:Image ID="Image1" runat="server" Height="223px" ImageUrl="~/Imagenes/starttap.jpg" Width="734px" />
                <br />
                <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Bienvenido a Inicio.aspx" CssClass="auto-style4" BorderStyle="None" Font-Names="Arial Black" ForeColor="#660066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
    </form>
</body>
</html>
