<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerTablas.aspx.cs" Inherits="Vistas.Administrador.VerTablas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

    .header {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .header .logout-button {
            background-color: #f44336; 
            color: white;
            border: none; 
            padding: 10px 20px; 
            cursor: pointer; 
            float: right;
        }

        .header .logout-button:hover {
            background-color: #d32f2f; 
        }

    .MsoNormal
	{   
        font-family: Arial, sans-serif;
        font-size: 15px;
        font-weight: bold;
        color: #333;
        margin-bottom: 10px;
        display: block;
        width: 100%;
        text-align: center;
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
    
    .navigation-menu {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .navigation-menu li {
        margin-bottom: 10px; /* Espacio entre los enlaces */
    }

    .navigation-menu a {
        text-decoration: none;
        color: #007bff; /* Color del texto */
        font-weight: bold;
    }

    .navigation-menu a:hover {
        color: #0056b3; /* Color al pasar el mouse por encima */
    }
        .auto-style1 {
            width: 310px;
            height: 358px;
        }
    </style>

</head>
<body class="bodyBlanco">
    <form id="form1" runat="server">
        <div class="header">
            <asp:Label ID="lblCerrarSesion" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesión" CssClass="logout-button" OnClick="btnCerrarSesion_Click" Height="36px" Width="133px" />
        </div>
      
        <div class="auto-style1">
            
            <br />
            <asp:Label ID="lblHola" runat="server" Text="HOLA "  CssClass="labelPrincipal"></asp:Label>
            <asp:Label ID="lblNombreUsuario" runat="server"  CssClass="labelPrincipal" >&quot;Nombre de usuario&quot;</asp:Label>
            <asp:Label ID="lblBienvenido" runat="server" Text="¡BIENVENIDA/O!" CssClass="labelPrincipal"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="lblBienvenido0" runat="server" Text="Acceso de Usuario Administrador." CssClass="MsoNormal"></asp:Label>
            </div>
        <ul class="navigation-menu">
    <li>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/AgregarEmpleado.aspx">Agregar Empleado</asp:HyperLink>
    </li>
    <li>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Administrador/DatosLaboralesEmpleados.aspx">Datos laborales</asp:HyperLink>
    </li>
    <li>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Administrador/TablaEmpleados.aspx">Ver empleados</asp:HyperLink>
    </li>
    <li>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Administrador/TablaClientes.aspx">Ver clientes</asp:HyperLink>
    </li>
    <li>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Administrador/ClientesInactivos.aspx">Clientes inactivos</asp:HyperLink>
    </li>
    <li>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Administrador/AgregarProducto.aspx">Ver/Agregar productos</asp:HyperLink>
    </li>
    <li>
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Administrador/MostrarReportes.aspx">Ver reportes</asp:HyperLink>
    </li>
</ul>

    </form>
</body>
</html>