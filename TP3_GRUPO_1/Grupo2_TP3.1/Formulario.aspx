<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Grupo2_TP3._1.Formulario" %>


<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><title></title><style type="text/css">
        .auto-style1 {
            width: 56%;
            height: 743px;
                                                                                                                                                                          margin-left: 377px;
                                                                                                                                                                          margin-right: 2px;
                                                                                                                                                                          margin-top: 0px;
                                                                                                                                                                          margin-bottom: 0px;
                                                                                                                                                                          background-color: #808080;
                                                                                                                                                                          font-family: "Arial Black";
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style5 {
                                                                                                                                                                          width: 295px;
                                                                                                                                                                          font-size: small;
                                                                                                                                                                          font-family: "Arial Black";
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style11 {
                                                                                                                                                                          width: 383px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style13 {
                                                                                                                                                                          width: 402px;
                                                                                                                                                                          text-align: right;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style15 {
                                                                                                                                                                          text-align: center;
                                                                                                                                                                          height: 52px;
                                                                                                                                                                          font-size: x-large;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style16 {
                                                                                                                                                                          width: 2237px;
                                                                                                                                                                          height: 1356px;
                                                                                                                                                                          margin-left: 0px;
                                                                                                                                                                          margin-right: 260px;
                                                                                                                                                                          background-color: #012849;
                                                                                                                                                                          margin-bottom: 311px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style17 {
                                                                                                                                                                          width: 402px;
                                                                                                                                                                          text-align: left;
                                                                                                                                                                          height: 23px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style18 {
                                                                                                                                                                          width: 383px;
                                                                                                                                                                          height: 23px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style19 {
                                                                                                                                                                          width: 215px;
                                                                                                                                                                          height: 23px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style29 {
                                                                                                                                                                          font-size: small;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style31 {
                                                                                                                                                                          width: 402px;
                                                                                                                                                                          text-align: right;
                                                                                                                                                                          font-size: small;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style33 {
                                                                                                                                                                          width: 215px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style34 {
                                                                                                                                                                          font-size: small;
                                                                                                                                                                          width: 215px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style35 {
                                                                                                                                                                          font-size: large;
                                                                                                                                                                          color: #660066;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style36 {
                                                                                                                                                                          text-align: center;
                                                                                                                                                                          background-color: #1F1F1F;
                                                                                                                                                                          height: 60px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style37 {
                                                                                                                                                                          text-align: center;
                                                                                                                                                                          font-size: large;
                                                                                                                                                                          background-color: #1F1F1F;
                                                                                                                                                                          height: 61px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style39 {
                                                                                                                                                                          color: #FFFFFF;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style40 {
                                                                                                                                                                          width: 402px;
                                                                                                                                                                          text-align: left;
                                                                                                                                                                          height: 95px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style41 {
                                                                                                                                                                          width: 402px;
                                                                                                                                                                          height: 62px;
                                                                                                                                                                          text-align: right;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style42 {
                                                                                                                                                                          width: 383px;
                                                                                                                                                                          height: 62px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style43 {
                                                                                                                                                                          width: 215px;
                                                                                                                                                                          height: 62px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style44 {
                                                                                                                                                                          width: 215px;
                                                                                                                                                                          text-align: center;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style45 {
                                                                                                                                                                          width: 383px;
                                                                                                                                                                          height: 95px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style46 {
                                                                                                                                                                          width: 215px;
                                                                                                                                                                          height: 95px;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style47 {
                                                                                                                                                                          font-size: x-large;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style48 {
                                                                                                                                                                          color: #FFFFFF;
                                                                                                                                                                          font-size: x-large;
                                                                                                                                                                      }
                                                                                                                                                                      .auto-style50 {
                                                                                                                                                                          font-size: small;
                                                                                                                                                                          font-family: "Arial Black";
                                                                                                                                                                      }
    </style></head><body><form id="form1" runat="server">
        <div class="auto-style16">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15" colspan="3">
                        <asp:Image ID="Image1" runat="server" Height="223px" ImageAlign="Middle" ImageUrl="~/Imagenes/starttap.jpg" Width="734px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="3"><strong>NUEVO REGISTRO</strong></td>
                </tr>
                <tr>
                    <td class="auto-style36" colspan="3"><strong><span class="auto-style48">Localidades&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </strong></td>
                </tr>
              <tr>
              <td class="auto-style13" ><strong>Ingrese localidad:</strong></td>
                    <td class="auto-style11">
                        <br />
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="180px" ValidationGroup="GrupoL" Height="20px"></asp:TextBox>
                        <br />
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GrupoL" Display="Dynamic" CssClass="auto-style50">*Ingrese una localidad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNumerosyLetras" runat="server" ControlToValidate="txtLocalidad" EnableTheming="False" ValidationExpression="^(?:\d+\s)?[a-zA-Z]+(?:\s[a-zA-Z0-9 ]+)*[a-zA-Z]$" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GrupoL" SetFocusOnError="True" Display="Dynamic" CssClass="auto-style50">*Ingrese una Localidad Valida</asp:RegularExpressionValidator>
                        <asp:CustomValidator runat="server" ID="cvValidarLocaliadesRepetidas" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ControlToValidate="txtLocalidad" OnServerValidate="sv_LocaliadRepetida" ValidationGroup="GrupoL" Display="Dynamic" CssClass="auto-style50">*La localidad ya esta registrada</asp:CustomValidator>   
                        </strong>   
                        <br />
                    </td>
                    <td class="auto-style33">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style41"></td>
                    <td class="auto-style42">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" ValidationGroup="GrupoL" Width="189px" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="#660066" Height="30px" />
                    </td>
                    <td class="auto-style43">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblMensajeLocalidad" runat="server" ForeColor="#00CC00" CssClass="auto-style29"></asp:Label>
                    </td>
                    <td class="auto-style34">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37" colspan="3"><strong><span class="auto-style39"><span class="auto-style47">Usuario</span>&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                </tr>
                <tr>
                    <td class="auto-style41"><strong>Nombre de usuario:</strong></td>
                    <td class="auto-style42">
                        <br />
                        <asp:TextBox ID="txtUsuario" runat="server" Width="180px" ValidationGroup="GUsuario" Height="20px"></asp:TextBox>
                        <br />
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" CssClass="auto-style50">*Ingrese nombre de usuario</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style43">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style41">
                        <strong>
                        <asp:Label runat="server" Text="Contraseña:" ID="label001"></asp:Label>&nbsp;
                    </strong>
                    </td>
                    <td class="auto-style42">
                        <br />
                        <asp:TextBox ID="txtContraseña" runat="server" Width="180px" TextMode="Password" ValidationGroup="GUsuario" Height="20px"></asp:TextBox>&nbsp;<br />
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" CssClass="auto-style50">*Ingrese una contraseña</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style43"></td>
                </tr>
                <tr>
                    <td class="auto-style41">
                        <strong>
                        <asp:Label runat="server" Text="Repetir contraseña:" ID="Label1"></asp:Label>&nbsp;
                    </strong>
                    </td>
                    <td class="auto-style42">
                        <br />
                        <asp:TextBox ID="txtRepContraseña" runat="server" Width="180px" TextMode="Password" ValidationGroup="GUsuario" Height="20px"></asp:TextBox>&nbsp;<br />
                        <strong>
                        <asp:CompareValidator ID="cvErrorPassw" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepContraseña" Display="Dynamic" ErrorMessage="CompareValidator" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" CssClass="auto-style5">*La contraseña no coincide </asp:CompareValidator>
                        </strong>
                    </td>
                    <td class="auto-style43"></td>
                </tr>
                <tr>
                    <td class="auto-style41">
                        <strong>
                        <asp:Label runat="server" Text="Correo electronico:" ID="Label2"></asp:Label>&nbsp;
                    </strong>
                    </td>
                    <td class="auto-style42">
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server" Width="180px" ValidationGroup="GUsuario" Height="20px"></asp:TextBox>&nbsp;<br />
                        <strong>
                        <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="TextBox3" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="GUsuario" Display="Dynamic" CssClass="auto-style50">*Ingrese un Correo Electronico Valido</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="TextBox3" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" Display="Dynamic" CssClass="auto-style50">*Ingrese su Correo Electronico</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style43"></td>
                </tr>
                <tr>
                    <td class="auto-style41">
                        <strong>
                        <asp:Label runat="server" Text="CP:" ID="Label3"></asp:Label>&nbsp;
                    </strong>
                    </td>
                    <td class="auto-style42">
                        <br />
                        <asp:TextBox ID="tbId" runat="server" Width="180px" ValidationGroup="GUsuario" Height="20px"></asp:TextBox><br />
                        <strong>
                        <asp:RegularExpressionValidator ID="revCodigoPostal" runat="server" ControlToValidate="tbId" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationExpression="\d{4}" ValidationGroup="GUsuario" Display="Dynamic" CssClass="auto-style50">*Ingrese un Codigo  Postal Valido</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="tbId" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="GUsuario" Display="Dynamic" CssClass="auto-style50">*Ingrese su Codigo Postal</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td class="auto-style43"></td>
                </tr>
                <tr>
                     <td class="auto-style13">
                         <strong>
                        <asp:Label runat="server" Text="Localidades:" ID="Label4"></asp:Label>&nbsp;
                    </strong>
                    </td>
                    <td class="auto-style11">
                        <br />
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="GrupoL" Width="189px" AutoPostBack="True" OnSelectedIndexChanged="ddlLocalidades_SelectedIndexChanged" Height="20px">
                            <asp:ListItem Value="0">Seleccione una localidad</asp:ListItem>
                        </asp:DropDownList>&nbsp;<br />
                        <strong>
                        <asp:RequiredFieldValidator ID="rfvLocalidad1" runat="server" ControlToValidate="ddlLocalidades" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" InitialValue="0" ValidationGroup="GUsuario" CssClass="auto-style50">*Seleccione una Localidad</asp:RequiredFieldValidator>
                        </strong>
                     </td>
                    <td class="auto-style44">
                        <br />
                        <asp:Button ID="btnEditarLocalidad" runat="server" OnClick="btnEditarLocalidad_Click" Text="Editar localidad" ValidationGroup="EdLocalidad" Visible="False" Width="188px" Height="30px" />
                        <asp:TextBox ID="tbEditarLocalidad" runat="server" ValidationGroup="EdLocalidad" Visible="False" Width="180px" Height="20px"></asp:TextBox>
                        &nbsp;<asp:Button ID="btnGuardarCambio" runat="server" OnClick="btnGuardarCambio_Click" Text="Guardar" ValidationGroup="confEdi" Visible="False" Height="30px" Width="188px" />
                        <br />
                        <strong>
                        <asp:CustomValidator runat="server" ID="cvValidarLocaliadesRepetidas1" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ControlToValidate="tbEditarLocalidad" OnServerValidate="sv_LocaliadRepetida2" ValidationGroup="confEdi" Display="Dynamic" CssClass="auto-style50">*Localidad ya registrada</asp:CustomValidator>   
                        <asp:RequiredFieldValidator ID="rfvLocalidad3" runat="server" ControlToValidate="tbEditarLocalidad" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="confEdi" Display="Dynamic" CssClass="auto-style50">*Ingrese una localidad</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNumerosyLetras0" runat="server" ControlToValidate="tbEditarLocalidad" EnableTheming="False" ValidationExpression="^(?:\d+\s)?[a-zA-Z]+(?:\s[a-zA-Z0-9 ]+)*[a-zA-Z]$" Font-Names="Calibri" Font-Size="X-Small" ForeColor="#660066" ValidationGroup="confEdi" SetFocusOnError="True" CssClass="auto-style50">*Localidad invalida</asp:RegularExpressionValidator>
                        </strong>
                        </td>
                </tr>
                <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42">
                    <asp:Button ID="btnGuardarUsuario" runat="server" OnClick="btnGuardarUsuario_Click" Text="Guardar Usuario" ValidationGroup="GUsuario" Width="189px" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="#660066" Height="30px" />
                    </td>
                <td class="auto-style43">
                    </td>
                </tr>
                <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style41">
                    </td>
                <td class="auto-style42">
                    <asp:Label ID="lblMensajeUsuario" runat="server" Font-Bold="True" CssClass="auto-style35"></asp:Label>
                    </td>
                <td class="auto-style43"></td>
                </tr>
                <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                </tr>
                <tr>
                <td class="auto-style40"><strong>
                    <asp:Button ID="btnAspx" runat="server" OnClick="btnAspx_Click" Text="Ir a Inicio.aspx" Width="189px" BackColor="#CC99FF" BorderStyle="None" Font-Bold="True" ForeColor="#660066" Height="30px" />
                    </strong></td>
                <td class="auto-style45"></td>
                <td class="auto-style46"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
