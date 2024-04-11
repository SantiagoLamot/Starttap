<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2B.aspx.cs" Inherits="TP2_GRUPO_1.WebForm2B" %>

<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #333333;
            height: 424px;
        }
        .auto-style5 {
            width: 80px;
            height: 45px;
        }
        .auto-style6 {
            height: 45px;
        }
        .auto-style7 {
            width: 80px;
            height: 49px;
        }
        .auto-style14 {
            height: 49px;
            width: 141px;
            text-align: left;
        }
        .auto-style8 {
            height: 49px;
        }
        .auto-style9 {
            width: 80px;
            height: 50px;
        }
        .auto-style15 {
            height: 50px;
            width: 141px;
            text-align: left;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style17 {
            width: 80px;
            height: 39px;
        }
        .auto-style18 {
            height: 39px;
            width: 141px;
            text-align: left;
        }
        .auto-style19 {
            height: 39px;
        }
        .auto-style11 {
            width: 80px;
            height: 57px;
        }
        .auto-style12 {
            height: 57px;
        }
        .auto-style20 {
            height: 45px;
            font-size: xx-large;
            text-align: center;
            color: #A87DCF;
        }
        .auto-style22 {
            width: 97px;
            height: 39px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style23 {
            width: 97px;
            height: 50px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style24 {
            width: 97px;
            height: 49px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style25 {
            height: 57px;
            margin-left: 40px;
        }
        .auto-style26 {
            color: #FFFFFF;
        }
        .auto-style27 {
            width: 80px;
            height: 57px;
            color: #FFFFFF;
        }
        .auto-style28 {
            width: 80px;
            height: 39px;
            color: #FFFFFF;
        }
        .auto-style29 {
            width: 80px;
            height: 50px;
            color: #FFFFFF;
        }
        .auto-style30 {
            width: 80px;
            height: 8px;
        }
        .auto-style31 {
            width: 80px;
            height: 8px;
            color: #FFFFFF;
        }
        .auto-style32 {
            width: 97px;
            height: 8px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style33 {
            height: 8px;
            width: 141px;
            text-align: left;
        }
        .auto-style34 {
            height: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style20" colspan="2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style20" colspan="2"><strong>Resumen</strong></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style24"><strong>Nombre:</strong></td>
                    <td class="auto-style14">
                        <strong>
                        <asp:Label ID="lblNombre" runat="server" Font-Bold="True" ForeColor="#A87DCF" OnLoad="lblNombre_Load"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style23"><strong>Apellido:</strong></td>
                    <td class="auto-style15">
                        <strong>
                        <asp:Label ID="lblApellido" runat="server" Font-Bold="True" ForeColor="#A87DCF"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style22"><strong>Zona:</strong></td>
                    <td class="auto-style18"><strong>
                        <asp:Label ID="lblZona" runat="server" ForeColor="#A87DCF"></asp:Label>
                        </strong></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style30"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style34"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style25" colspan="2"><span class="auto-style26"><strong>Los temas elegidos son:</strong></span><strong><br />
                        <br class="auto-style26" />
                        <asp:Label ID="lblTemas" runat="server" CssClass="auto-style26" ForeColor="#A87DCF"></asp:Label>
                        </strong></td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style25" colspan="2">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>