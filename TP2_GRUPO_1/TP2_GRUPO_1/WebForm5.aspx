<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio5.aspx.cs" Inherits="Tp2Programacion.ejercicio5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EJERCICIO 5</title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            margin-left: 14px;
            margin-top: 0px;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            color: #A87CCE;
            font-weight: bold;
        }
        .auto-style11 {
            text-align: center;
            height: 59px;
            color: #CD91CE;
        }
        .auto-style12 {
            width: 100%;
            color: #FFFFFF;
            height: 422px;
            background-color: #26303D;
        }
        .auto-style16 {
            width: 282px;
            height: 122px;
        }
        .auto-style17 {
            height: 122px;
        }
        .auto-style19 {
            width: 282px;
            height: 51px;
        }
        .auto-style20 {
            height: 51px;
        }
        .auto-style21 {
            text-align: center;
            height: 52px;
        }
        .auto-style22 {
            margin-left: 15px;
            margin-top: 15px;
        }
        .auto-style23 {
            width: 239px;
            height: 51px;
        }
        .auto-style25 {
            width: 239px;
            height: 122px;
        }
        .auto-style26 {
            text-align: center;
            height: 64px;
        }
        .auto-style27 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">

            <fieldset style="align-content:center; border: none; padding: 20px; border-radius: 5px; background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);" class="auto-style22">
            <legend style="padding: 0 10px;" class="auto-style1">Ejercicios</legend>
            <asp:Button ID="btn1" runat="server" Text="1" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn1_Click" CssClass="auto-style1" />
            <asp:Button ID="btn2" runat="server" Text="2" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn2_Click" CssClass="auto-style1" />
            <asp:Button ID="btn3" runat="server" Text="3" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn3_Click" CssClass="auto-style1" />
            <asp:Button ID="btn4" runat="server" Text="4" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn4_Click" CssClass="auto-style1" />
               
                <br />
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style21"><strong>&nbsp;Elija su configuracion</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23"></td>
                        <td class="auto-style19"><strong>S<b>eleccione cantidad de memoria: </b></strong></td>
                        <td class="auto-style20"><strong>
            <asp:DropDownList ID="ddlmemoria" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_SelectedIndexChanged" CssClass="auto-style1" Font-Names="Arial Narrow" ForeColor="#A87CCE">
                <asp:ListItem Value="200">2 GB</asp:ListItem>
                <asp:ListItem Value="375">4 GB</asp:ListItem>
                <asp:ListItem Value="500">6 GB</asp:ListItem>
            </asp:DropDownList>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style25"></td>
                        <td class="auto-style16"><b><strong>Seleccione accesorios:</strong></b></td>
                        <td class="auto-style17"><strong>
            <asp:CheckBoxList ID="ChkAccesorios" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="2000,50">Monitor LCD</asp:ListItem>
                <asp:ListItem Value="550,50">HD 500 GB</asp:ListItem>
                <asp:ListItem Value="1200">Grabador DVD </asp:ListItem>
            </asp:CheckBoxList>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style26" colspan="3"><strong>
                            <br />
            <asp:Button ID="btnTotal" runat="server" OnClick="Button1_Click" Text="Calcular Valor Total" BorderStyle="Solid" CssClass="auto-style7" Width="216px" />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style11" colspan="3"><strong><span class="auto-style27">El precio final es de </span> <asp:Label ID="Total" runat="server" CssClass="auto-style27"></asp:Label>
                            </strong></td>
                        </strong>
                    </tr>
                </table>
                <br />
               
            </fieldset><br />
            <b>&nbsp;</b></div>
    </form>
</body>
</html>
