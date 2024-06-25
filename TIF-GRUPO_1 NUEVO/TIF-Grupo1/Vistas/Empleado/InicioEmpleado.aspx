<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioEmpleado.aspx.cs" Inherits="Vistas.Empleado.InicioEmpleado" %>
<%@ Register Src="~/Empleado/VistaMenuEmpleado.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" type="text/css" href="../Estilos/StyleGeneral.css"/>
      <link rel="stylesheet" type="text/css" href="../Estilos/StyleMenu.css"/>
</head>
    <header><uc:menu runat="server" /> </header>
<body class="bodyBlanco">
    <form id="form1" runat="server">
        <main class="menu-container"></main>
        <div>
            <asp:Label runat="server" Font-Size="XX-Large" Text="STARTAP BREWING CO." ID="ctl02" Font-Bold="True"></asp:Label>
            <br />
            <br />
            Bienvenido
            <asp:Label ID="lblNombreUsuario" runat="server"></asp:Label>
&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
