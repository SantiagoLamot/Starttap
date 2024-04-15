<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2A.aspx.cs" Inherits="TP2_GRUPO_1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EJERCICIO 2</title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            background-color: #26303D;
            height: 419px;
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
        .auto-style8 {
            height: 49px;
        }
        .auto-style9 {
            width: 80px;
            height: 50px;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style11 {
            width: 80px;
            height: 57px;
        }
        .auto-style12 {
            height: 57px;
        }
        .auto-style13 {
            height: 45px;
            width: 141px;
        }
        .auto-style14 {
            height: 49px;
            width: 141px;
        }
        .auto-style15 {
            height: 50px;
            width: 141px;
        }
        .auto-style16 {
            height: 57px;
            width: 141px;
        }
        .auto-style17 {
            width: 80px;
            height: 39px;
        }
        .auto-style18 {
            height: 39px;
            width: 141px;
        }
        .auto-style19 {
            height: 39px;
        }
        .auto-style20 {
            color: #A87CCE;
        }
        .auto-style21 {
            position: static;
        }
        .auto-style22 {
            margin-left: 15px;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="margin: 10px">
        <div class="auto-style22" style="padding: inherit; margin-right: inherit; margin-bottom: inherit;">

            <fieldset style=" align-content:center; border: none; padding: 20px; border-radius: 5px; background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);" class="auto-style21">
                <legend style="font-weight: bold; padding: 0 10px;">Ejercicios</legend>
                <asp:Button ID="btn1" runat="server" Text="1" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn1_Click" />
                <asp:Button ID="btn3" runat="server" Text="3" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn3_Click" />
                <asp:Button ID="btn4" runat="server" Text="4" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn4_Click" />
                <asp:Button ID="btn5" runat="server" Text="5" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn5_Click" />
               
                <br />
               
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5">
                        <asp:Label ID="LBLINGRESONOMB" runat="server" ForeColor="White" Text="Nombre:"></asp:Label>
                    </td>
                    <td class="auto-style13"><strong>
                        <asp:TextBox ID="txtNombre" runat="server" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#A87CCE" Width="228px"></asp:TextBox>
                        </strong></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7">
                        <asp:Label ID="LBLINGRESOAPE" runat="server" ForeColor="White" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style14"><strong>
                        <asp:TextBox ID="txtApellido" runat="server" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#A87CCE" Width="228px"></asp:TextBox>
                        </strong></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="LBLINGRESOCIUDAD" runat="server" ForeColor="White" Text="Ciudad:"></asp:Label>
                    </td>
                    <td class="auto-style15"><strong>
                        <asp:DropDownList ID="ddlCiudad" runat="server" AutoPostBack="True" Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#A87CCE" CssClass="auto-style20">
                            <asp:ListItem Value="Zona Norte">Gral. Pacheco</asp:ListItem>
                            <asp:ListItem Value="Zona Oeste">San Miguel</asp:ListItem>
                            <asp:ListItem Value="Zona Sur">Boedo</asp:ListItem>
                        </asp:DropDownList>
                        </strong></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="LBLiNGRESOTEMAS" runat="server" ForeColor="White" Text="Temas:"></asp:Label>
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:CheckBoxList ID="cblTemas" runat="server" AutoPostBack="True" BorderStyle="Solid" Font-Names="Arial Narrow" ForeColor="#A87CCE" Height="115px" Width="119px">
                            <asp:ListItem Value="Ciencias">Ciencias</asp:ListItem>
                            <asp:ListItem>Literatura</asp:ListItem>
                            <asp:ListItem>Historia</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="btnResumen" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Medium" ForeColor="#A87CCE" OnClick="btnResumen_Click" Text="Ver Resumen" UseSubmitBehavior="False" Width="239px" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
               
            </fieldset>

            </div>
    </form>
</body>
</html>