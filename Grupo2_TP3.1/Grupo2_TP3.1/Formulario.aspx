<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Grupo2_TP3._1.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 203px;
        }
        .auto-style2 {
            width: 131px;
        }
        .auto-style3 {
            width: 204px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style3"><strong>Localidades</strong></td>
                    <td><strong></strong></td>
                    <td><strong></strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">Ingrese localidad:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtLocalidad" runat="server" ValidationGroup="GrupoL" Width="178px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ForeColor="Red" ValidationGroup="GrupoL" Display="Dynamic">Ingrese una localidad</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" ValidationGroup="GrupoL" Width="187px" />
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revNumerosyLetras" runat="server" ControlToValidate="txtLocalidad" EnableTheming="False" ValidationExpression="^[0-9]*?[  a-z ]*?[A-Za-z]+$">*</asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblMensajeLocalidad" runat="server" ForeColor="#00CC00"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"><strong>Usuarios</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre de usuario:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="No se ha ingresado nombre de usuario.">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
