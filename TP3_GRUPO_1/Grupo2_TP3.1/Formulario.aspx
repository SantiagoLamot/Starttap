<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Grupo2_TP3._1.Formulario" %>


<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><title></title><style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 203px;
                                                                                                                                                                          font-family: "Arial Narrow";
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style4 {
                                                                                                                                                                          height: 24px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style5 {
                                                                                                                                                                          width: 154px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style6 {
                                                                                                                                                                          width: 215px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style7 {
                                                                                                                                                                          height: 24px;
                                                                                                                                                                          width: 154px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style8 {
                                                                                                                                                                          width: 154px;
                                                                                                                                                                          height: 30px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style9 {
                                                                                                                                                                          height: 30px;
                                                                                                                                                                      }
    </style></head><body><form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6"><strong>Localidades</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
              <tr>
              <td class="auto-style5" >Ingrese localidad:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="180px" ValidationGroup="GrupoL"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GrupoL" Display="Dynamic">*Ingrese una localidad</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revNumerosyLetras" runat="server" ControlToValidate="txtLocalidad" EnableTheming="False" ValidationExpression="^(?:\d+\s)?[a-zA-Z]+(?:\s[a-zA-Z0-9 ]+)*[a-zA-Z]$" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GrupoL" SetFocusOnError="True">*Ingrese una Localidad Valida</asp:RegularExpressionValidator>
                        <br />
                        <asp:CustomValidator runat="server" ID="cvValidarLocaliadesRepetidas" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ControlToValidate="txtLocalidad" OnServerValidate="sv_LocaliadRepetida" ValidationGroup="GrupoL">*La localidad ya esta registrada</asp:CustomValidator>   
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" ValidationGroup="GrupoL" Width="187px" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="lblMensajeLocalidad" runat="server" ForeColor="#00CC00"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Nombre de usuario:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="179px" ValidationGroup="GUsuario"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="No se ha ingresado nombre de usuario.">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label runat="server" Text="Contraseña:" ID="label001"></asp:Label>&nbsp;
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtContraseña" runat="server" Width="178px" TextMode="Password"></asp:TextBox>&nbsp;</td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label runat="server" Text="Repetir contraseña:" ID="Label1"></asp:Label>&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="txtRepContraseña" runat="server" Width="180px" TextMode="Password"></asp:TextBox>&nbsp;<br />
                        <asp:CompareValidator ID="cvErrorPassw" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepContraseña" Display="Dynamic" ErrorMessage="CompareValidator" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" CssClass="auto-style5">*La contraseña no coincide </asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label runat="server" Text="Correo electronico:" ID="Label2"></asp:Label>&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label runat="server" Text="CP:" ID="Label3"></asp:Label>&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                     <td class="auto-style5">
                        <asp:Label runat="server" Text="Localidades:" ID="Label4"></asp:Label>&nbsp;
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="GrupoL" Width="180px"></asp:DropDownList>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btnGuardarUsuario" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Usuario" ValidationGroup="GrupoL" Width="180px" />
                    </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style7"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                </tr>
                <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
