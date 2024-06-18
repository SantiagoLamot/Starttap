<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioRegistro.aspx.cs" Inherits="Vistas.FormularioRegistro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        STARTAP<br />
        BREWING CO.<br />
        <br />
        <asp:Label ID="lblTituloPagina" runat="server" Text="FORMULARIO DE REGISTRO"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblIngreseDatos" runat="server" Text="Ingrese Sus Datos"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
&nbsp;<asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style1" Width="154px" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="*El Campo Nombre no puede estar vacio" ValidationGroup="GRegistro">*El Campo Nombre no puede estar vacio</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
&nbsp;<asp:TextBox ID="txtApellido" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApellido" ErrorMessage="*El campo Apellido no puede estar vacio" ValidationGroup="GRegistro">*El campo Apellido no puede estar vacio</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblmail" runat="server" Text="Email"></asp:Label>
&nbsp;<asp:TextBox ID="txtmail" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtmail" ErrorMessage="*Ingrese una dirección de Email válida" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="GRegistro">*Ingrese una dirección de Email válida</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
&nbsp;<asp:TextBox ID="txtContraseña" runat="server" CssClass="auto-style1" Width="154px" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*El Campo Contraseña no puede estar vacío" ValidationGroup="GRegistro">*El Campo Contraseña no puede estar vacío</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rveContraseñaInsegura" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*Contraseña Insegura" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$" ValidationGroup="GRegistro">*Contraseña Insegura</asp:RegularExpressionValidator>
&nbsp;<br />
        <br />
        <asp:Literal ID="litPasswordRequirements" runat="server" 
            Text="La contraseña debe tener al menos 8 caracteres, incluyendo:
            <ul>
                <li>Una letra mayúscula</li>
                <li>Una letra minúscula</li>
                <li>Un número</li>
                <li>Un carácter especial (@$!%*?&)</li>
            </ul>"></asp:Literal>
        <br />
        <asp:Label ID="lblRepetirContraseña" runat="server" Text="Repetir Contraseña"></asp:Label>
        <asp:TextBox ID="txtRepetirContraseña" runat="server" CssClass="auto-style1" Width="154px" ValidationGroup="GRegistro"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ErrorMessage="*El Campo Repetir Contraseña no puede estar vacío" ValidationGroup="GRegistro">*El Campo Repetir Contraseña no puede estar vacío</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContraseña" ErrorMessage="*La contraseña no coincide" ValidationGroup="GRegistro">*La contraseña no coincide</asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="lblDNI" runat="server" Text="D.N.I"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDNI" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*El D.N.I ingresado no es válido, ingrese solamente Números" ControlToValidate="txtDNI" ValidationExpression="(D-)?\d{8}" ValidationGroup="GRegistro">*El D.N.I ingresado no es válido, ingrese solamente Números</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="51px" ValidationGroup="GRegistro">
            <asp:ListItem>+54</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtcodarea" runat="server" CssClass="auto-style1" Width="62px" TextMode="Phone" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:TextBox ID="txtnumtelefono" runat="server" CssClass="auto-style1" Width="87px" TextMode="Phone" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtcodarea" ErrorMessage="*El Campo Cod. de área no puede estar vacío" ValidationGroup="GRegistro">*El Campo Cod. de área no puede estar vacío</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvNumtelefono" runat="server" ControlToValidate="txtnumtelefono" ErrorMessage="*El Campo num Telefono no puede estar vacío" ValidationGroup="GRegistro">*El Campo Telefono no puede estar vacío</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rvecodarea" runat="server" ControlToValidate="txtcodarea" ErrorMessage="*Ingrese un Numero Valido" ValidationExpression="(D-)?\d{1,4}" SetFocusOnError="True"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="rveNumTelefono" runat="server" ControlToValidate="txtnumtelefono" ErrorMessage="*Ingrese un Numero Valido" ValidationExpression="(D-)?\d{6}" SetFocusOnError="True"></asp:RegularExpressionValidator>
        <br />
                    <asp:Literal ID="litPasswordRequirements0" runat="server" 
                Text="El Numero de Telefono debe ser escrito de la siguiente manera:
                <ul>
                    <li>+54</li>
                    <li>4 numeros para el código de área</li>
                    <li>8 a 10 numeros para el número de telefono</li>
                
                </ul>">
            </asp:Literal> 
        <br />
        <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="auto-style1" Width="154px" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="*El Campo Dirección no puede estar vacío" ValidationGroup="GRegistro">*El Campo Dirección no puede estar vacío</asp:RequiredFieldValidator>
        <br />
        <br />   
        <br />
        <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" OnClick="TextBox1_TextChanged" ValidationGroup="GRegistro" Width="111px" />
        <br />
        <br />
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    </form>
</body>
</html>