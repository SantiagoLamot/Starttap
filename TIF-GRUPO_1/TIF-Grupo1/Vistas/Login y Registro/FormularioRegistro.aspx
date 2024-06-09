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
        <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
&nbsp;<asp:TextBox ID="txtUsuario" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="*El Campo Usuario no puede estar vacio" ValidationGroup="GRegistro">*El Campo Usuario no puede estar vacio</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
&nbsp;<asp:TextBox ID="txtContraseña" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*El Campo Contraseña no puede estar vacio" ValidationGroup="GRegistro">*El Campo Contraseña no puede estar vacio</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rveContraseñaInsegura" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*Contraseña Insegura" ValidationExpression="&quot;^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$&quot;">*Contraseña Insegura</asp:RegularExpressionValidator>
&nbsp;<br />
        <br />
        <br />
        <asp:Literal ID="litPasswordRequirements" runat="server" 
            Text="La contraseña debe tener al menos 8 caracteres, incluyendo:
            <ul>
                <li>Una letra mayúscula</li>
                <li>Una letra minúscula</li>
                <li>Un número</li>
                <li>Un carácter especial (@$!%*?&)</li>
            </ul>">
        </asp:Literal>
        <br />
        <br />
        <asp:Label ID="lblRepetirContraseña" runat="server" Text="Repetir Contraseña"></asp:Label>
        <asp:TextBox ID="txtRepetirContraseña" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ErrorMessage="*El Campo Repetir Contraseña no puede estar vacio" ValidationGroup="GRegistro">*El Campo Repetir Contraseña no puede estar vacio</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContraseña" ErrorMessage="*La contraseña no coincide" ValidationGroup="GRegistro">*La contraseña no coincide</asp:CompareValidator>
&nbsp;<br />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*El Campo Email no puede estar vacio" ValidationGroup="GRegistro">*El Campo Email no puede estar vacio</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rveEmailValido" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Ingrese un Email Valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Ingrese un Email Valido</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="*El Campo Telefono no puede estar vacio" ValidationGroup="GRegistro">*El Campo Telefono no puede estar vacio</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rveEmailValido0" runat="server" ControlToValidate="txtTelefono" ErrorMessage="*Ingrese un Numero Valido" ValidationExpression="^\+?\d{1,2}\s?\d{1,4}\s?\d{4,10}$">*Ingrese un Numero Valido</asp:RegularExpressionValidator>
        <br />
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
        <br />
        <br />
        <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="auto-style1" Width="154px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="*El Campo Direccion no puede estar vacio" ValidationGroup="GRegistro">*El Campo Direccion no puede estar vacio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="*Ingrese una Direccion Valida" ValidationExpression="^\+?\d{1,2}\s?\d{1,4}\s?\d{4,10}$">*Ingrese una Direccion Valida</asp:RegularExpressionValidator>

        <br />

        <br />
        <asp:Label ID="lblLocalidad" runat="server" Text="Localidad"></asp:Label>
        <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="auto-style1" Height="16px" Width="189px">
            <asp:ListItem>--Seleccione su Localidad--</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvSeleccionLocalidad" runat="server" ControlToValidate="ddlLocalidad" ErrorMessage="*Por favor seleccione una Localidad" InitialValue="--Seleccione su Localidad--" ValidationGroup="GRegistro">*Por favor seleccione una Localidad</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" ValidationGroup="GRegistro" Width="111px" />
    </form>
</body>
</html>
