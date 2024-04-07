<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Tp2Ejercicio1.WebForm3" %>

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
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td><strong>
                                    <asp:BulletedList ID="BulletedList1" runat="server" Font-Names="Arial Narrow" Font-Overline="False" Font-Underline="True" ForeColor="#A67ACB" Height="69px" Width="85px">
                                        <asp:ListItem>Rojo</asp:ListItem>
                                        <asp:ListItem>Azul</asp:ListItem>
                                        <asp:ListItem>Verde</asp:ListItem>
                                    </asp:BulletedList>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>
                                    <asp:Label ID="Label1" runat="server" ForeColor="#A67ACB" Text="Elija un color"></asp:Label>
                                    </strong></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
