<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioMozo.aspx.cs" Inherits="Vistas.Empleado.InicioMozo" %>
<%@ Register Src="~/Empleado/VistaMenuEmpleado.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
</head>
    <header><uc:menu runat="server" /> </header>
<body class="bodyBlanco">
    <form id="form1" runat="server">
         <main class="menu-container"></main>
         <asp:Label ID="Label2" runat="server" CssClass="nombre-usuario"></asp:Label>
        <div>
            <asp:Label runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label runat="server" Text="Bienvenido "></asp:Label>
            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text=" al menu de Mozo"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    </form>
</body>
</html>
