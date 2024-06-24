<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingreso.aspx.cs" Inherits="Vistas.Login_y_Registro.Ingreso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingresar</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>
</head>
<body class="bodyLogoColor">

    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label0" runat="server" Text="Bienvenido" CssClass="labelPrincipal"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="tb_Email" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label>
            <asp:TextBox ID="tb_Contraseña" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblMensaje1" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyperlink" NavigateUrl="~/Login y Registro/FormularioRegistro.aspx">¡Quiero registrarme!</asp:HyperLink>
            <br />
            <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="Iniciar Sesion" CssClass="BotonPrincipal" />
        </div>
    </form>
</body>
</html>
