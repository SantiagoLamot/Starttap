<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Grupo2_TP3._1.Formulario" %>


<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><title></title><style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 203px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style2 {
                                                                                                                                                                          height: 30px;
                                                                                                                                                                          width: 132px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style3 {
                                                                                                                                                                          width: 354px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style4 {
                                                                                                                                                                          height: 30px;
                                                                                                                                                                          width: 278px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style5 {
                                                                                                                                                                          width: 295px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style6 {
                                                                                                                                                                          height: 30px;
                                                                                                                                                                          width: 193px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style8 {
                                                                                                                                                                          width: 132px;
                                                                                                                                                                          height: 43px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style9 {
                                                                                                                                                                          width: 354px;
                                                                                                                                                                          height: 43px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style10 {
                                                                                                                                                                          height: 43px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style11 {
                                                                                                                                                                          width: 193px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style12 {
                                                                                                                                                                          width: 193px;
                                                                                                                                                                          height: 43px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style13 {
                                                                                                                                                                          width: 132px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style14 {
                                                                                                                                                                          height: 30px;
                                                                                                                                                                          width: 354px;
                                                                                                                                                                      }
    </style></head><body><form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11"><strong>Localidades</strong></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
              <tr>
              <td class="auto-style13" >Ingrese localidad:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="180px" ValidationGroup="GrupoL"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GrupoL" Display="Dynamic">*Ingrese una localidad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNumerosyLetras" runat="server" ControlToValidate="txtLocalidad" EnableTheming="False" ValidationExpression="^(?:\d+\s)?[a-zA-Z]+(?:\s[a-zA-Z0-9 ]+)*[a-zA-Z]$" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GrupoL" SetFocusOnError="True" Display="Dynamic">*Ingrese una Localidad Valida</asp:RegularExpressionValidator>
                        <asp:CustomValidator runat="server" ID="cvValidarLocaliadesRepetidas" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ControlToValidate="txtLocalidad" OnServerValidate="sv_LocaliadRepetida" ValidationGroup="GrupoL" Display="Dynamic">*La localidad ya esta registrada</asp:CustomValidator>   
                        <br />
                    </td>
                    <td class="auto-style3">
                        </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" ValidationGroup="GrupoL" Width="187px" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblMensajeLocalidad" runat="server" ForeColor="#00CC00"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Nombre de usuario:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtUsuario" runat="server" Width="179px" ValidationGroup="GUsuario"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario">*Ingrese nombre de usuario</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Contraseña:" ID="label001"></asp:Label>&nbsp;
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtContraseña" runat="server" Width="178px" TextMode="Password" ValidationGroup="GUsuario"></asp:TextBox>&nbsp;<br />
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario">*Ingrese una contraseña</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label runat="server" Text="Repetir contraseña:" ID="Label1"></asp:Label>&nbsp;
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtRepContraseña" runat="server" Width="180px" TextMode="Password" ValidationGroup="GUsuario"></asp:TextBox>&nbsp;<br />
                        <asp:CompareValidator ID="cvErrorPassw" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepContraseña" Display="Dynamic" ErrorMessage="CompareValidator" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" CssClass="auto-style5">*La contraseña no coincide </asp:CompareValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label runat="server" Text="Correo electronico:" ID="Label2"></asp:Label>&nbsp;
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox3" runat="server" Width="180px" ValidationGroup="GUsuario"></asp:TextBox>&nbsp;<br />
                        <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="TextBox3" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="GUsuario" Display="Dynamic">*Ingrese un Correo Electronico Valido</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="TextBox3" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" Display="Dynamic">*Ingrese su Correo Electronico</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label runat="server" Text="CP:" ID="Label3"></asp:Label>&nbsp;
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="tbId" runat="server" Width="180px" ValidationGroup="GUsuario"></asp:TextBox><br />
                        <asp:RegularExpressionValidator ID="revCodigoPostal" runat="server" ControlToValidate="tbId" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationExpression="^[0-9,$]*$" ValidationGroup="GUsuario" Display="Dynamic">*Ingrese un Codigo  Postal Valido</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="tbId" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" Display="Dynamic">*Ingrese su Codigo Postal</asp:RequiredFieldValidator>
                        <asp:CustomValidator runat="server" ID="cvCPvalido" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ControlToValidate="tbId" OnServerValidate="cvCPvalido_ServerValidate" ValidationGroup="GUsuario" Display="Dynamic" ValidateEmptyText="True">*el CP debe contener 4 caracteres</asp:CustomValidator>   
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                     <td class="auto-style13">
                        <asp:Label runat="server" Text="Localidades:" ID="Label4"></asp:Label>&nbsp;
                    </td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="GrupoL" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlLocalidades_SelectedIndexChanged">
                            <asp:ListItem Value="0">Seleccione una localidad</asp:ListItem>
                        </asp:DropDownList>&nbsp;<br />
                        <asp:RequiredFieldValidator ID="rfvLocalidad1" runat="server" ControlToValidate="ddlLocalidades" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" InitialValue="0" ValidationGroup="GUsuario">*Seleccione una Localidad</asp:RequiredFieldValidator>
                     </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnEditarLocalidad" runat="server" OnClick="btnEditarLocalidad_Click" Text="Editar localidad" ValidationGroup="EdLocalidad" Visible="False" Width="110px" />
                        <asp:TextBox ID="tbEditarLocalidad" runat="server" ValidationGroup="EdLocalidad" Visible="False" Width="138px"></asp:TextBox>
                        <asp:Button ID="btnGuardarCambio" runat="server" OnClick="btnGuardarCambio_Click" Text="Guardar" ValidationGroup="confEdi" Visible="False" />
                        <br />
                        <asp:CustomValidator runat="server" ID="cvValidarLocaliadesRepetidas1" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ControlToValidate="tbEditarLocalidad" OnServerValidate="sv_LocaliadRepetida2" ValidationGroup="confEdi" Display="Dynamic">*Localidad ya registrada</asp:CustomValidator>   
                        <asp:RequiredFieldValidator ID="rfvLocalidad3" runat="server" ControlToValidate="tbEditarLocalidad" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="confEdi" Display="Dynamic">*Ingrese una localidad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNumerosyLetras0" runat="server" ControlToValidate="tbEditarLocalidad" EnableTheming="False" ValidationExpression="^(?:\d+\s)?[a-zA-Z]+(?:\s[a-zA-Z0-9 ]+)*[a-zA-Z]$" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="confEdi" SetFocusOnError="True">*Localidad invalida</asp:RegularExpressionValidator>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="btnGuardarUsuario" runat="server" OnClick="btnGuardarUsuario_Click" Text="Guardar Usuario" ValidationGroup="GUsuario" Width="180px" />
                    </td>
                <td class="auto-style3">
                    <asp:Label ID="lblMensajeUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnAspx" runat="server" OnClick="btnAspx_Click" Text="Ir a Inicio.aspx" Width="121px" />
                    </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style14"></td>
                <td class="auto-style4"></td>
                </tr>
                <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
