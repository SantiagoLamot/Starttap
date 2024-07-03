<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioRegistro.aspx.cs" Inherits="Vistas.FormularioRegistro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .bodyLogoColor {
            font-family: Arial, sans-serif;
            background-image: url("/Imagenes/imagen01.jpeg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }
        .bodyBlanco {
            font-family: Arial, sans-serif;
            background-image: url("/Imagenes/imagen02.jpeg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }
        form {
            width: 300px;
            margin: 100px auto;
            padding-top: 50px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .formInicio {
            width: 700px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }
        .labelPrincipal {
            font-family: Arial, sans-serif;
            font-size: 30px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
            display: block;
            width: 100%;
            text-align: center;
        }
        label, input[type="text"], input[type="password"], input[type="email"], select {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .BotonPrincipal {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 25px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            cursor: pointer;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            display: block;
            width: 100%;
        }
        .BotonPrincipal:hover {
            background-color: white;
            color: black;
        }
        .hyperlink {
            display: block;
            width: 100%;
            text-align: center;
        }
        .hyperlinkParaListadoDeFunciones {
            display: block;
            width: 100%;
            text-align: left;
            padding: 20px;
        }
        .gridViewPrincipal {
            display: flex;
            justify-content: center;
            align-items: center;
            width: auto;
        }
    </style>
</head>
<body class="bodyLogoColor">
    <form id="form1" runat="server">
        <asp:Label ID="lblTituloPagina" runat="server" CssClass="labelPrincipal" Text="FORMULARIO DE REGISTRO"></asp:Label>
        <asp:Label ID="lblIngreseDatos" runat="server" Text="Ingrese Sus Datos"></asp:Label>
        
        <br />
        
        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="*El Campo Nombre no puede estar vacio" ValidationGroup="GRegistro"></asp:RequiredFieldValidator>
        
        <br />
        
        <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtApellido" ErrorMessage="*El campo Apellido no puede estar vacio" ValidationGroup="GRegistro"></asp:RequiredFieldValidator>
        
        <br />
        
        <asp:Label ID="lblmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtmail" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtmail" ErrorMessage="*Ingrese una dirección de Email válida" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="GRegistro"></asp:RegularExpressionValidator>
        
        <br />
        
        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
        <asp:TextBox ID="txtContraseña" runat="server" ValidationGroup="GRegistro" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*El Campo Contraseña no puede estar vacío" ValidationGroup="GRegistro"></asp:RequiredFieldValidator>
        <%--<asp:RegularExpressionValidator ID="rveContraseñaInsegura" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*Contraseña Insegura" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$" ValidationGroup="GRegistro"></asp:RegularExpressionValidator>--%>
        <br />
        <asp:Literal ID="litPasswordRequirements" runat="server" Text="La contraseña debe tener al menos 8 caracteres, incluyendo:
            <ul>
                <li>Una letra mayúscula</li>
                <li>Una letra minúscula</li>
                <li>Un número</li>
                <li>Un carácter especial (@$!%*?&)</li>
            </ul>"></asp:Literal>
        
        <asp:Label ID="lblRepetirContraseña" runat="server" Text="Repetir Contraseña"></asp:Label>
        <asp:TextBox ID="txtRepetirContraseña" runat="server" ValidationGroup="GRegistro" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ErrorMessage="*El Campo Repetir Contraseña no puede estar vacío" ValidationGroup="GRegistro"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContraseña" ErrorMessage="*La contraseña no coincide" ValidationGroup="GRegistro"></asp:CompareValidator>
        
        <br />
        
        <asp:Label ID="lblDNI" runat="server" Text="D.N.I"></asp:Label>
        <asp:TextBox ID="txtDNI" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*El D.N.I ingresado no es válido, ingrese solamente Números" ControlToValidate="txtDNI" ValidationExpression="(D-)?\d{8}" ValidationGroup="GRegistro"></asp:RegularExpressionValidator>
        
        <br />
        
        <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="GRegistro">
            <asp:ListItem>+54</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtcodarea" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:TextBox ID="txtnumtelefono" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtcodarea" ErrorMessage="*El Campo Cod. de área no puede estar vacío" ValidationGroup="GRegistro"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvNumtelefono" runat="server" ControlToValidate="txtnumtelefono" ErrorMessage="*El Campo Telefono no puede estar vacío" ValidationGroup="GRegistro"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rvecodarea" runat="server" ControlToValidate="txtcodarea" ErrorMessage="*Ingrese un Numero Valido" ValidationExpression="(D-)?\d{1,4}" SetFocusOnError="True"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="rveNumTelefono" runat="server" ControlToValidate="txtnumtelefono" ErrorMessage="*Ingrese un Numero Valido" ValidationExpression="(D-)?\d{6}" SetFocusOnError="True"></asp:RegularExpressionValidator>
        <br />
        <asp:Literal ID="litPasswordRequirements0" runat="server" Text="El Numero de Telefono debe ser escrito de la siguiente manera:
                <ul>
                    <li>+54</li>
                    <li>4 numeros para el código de área</li>
                    <li>8 a 10 numeros para el número de telefono</li>
                </ul>"></asp:Literal> 
        
        <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server" ValidationGroup="GRegistro"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="*El Campo Dirección no puede estar vacío" ValidationGroup="GRegistro"></asp:RequiredFieldValidator>
        
        <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" CssClass="BotonPrincipal" OnClick="btnRegistrarse_click" ValidationGroup="GRegistro" />
        
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
        <asp:HiddenField ID="hdnEsRegistroPorAdmin" runat="server" Value="false" />
    </form>
</body>
</html>
