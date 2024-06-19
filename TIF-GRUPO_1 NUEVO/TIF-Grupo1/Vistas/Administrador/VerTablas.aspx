<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerTablas.aspx.cs" Inherits="Vistas.Administrador.VerTablas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	}
    </style>
</head>
<body class="bodyBlanco">
    <form id="form1" runat="server">
      
        <div>
            
            <br />
            <asp:Label ID="lblHola" runat="server" Text="HOLA "></asp:Label>
            <asp:Label ID="lblNombreUsuario" runat="server" CssClass="MsoNormal">&quot;Nombre de usuario&quot;</asp:Label>
            <asp:Label ID="lblBienvenido" runat="server" Text=", BIENVENIDA/O!"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblTablas" runat="server" BorderStyle="Outset" Text="Seleccione una Tabla"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlTablas" runat="server">
                <asp:ListItem Value="-1">-seleccione una tabla-</asp:ListItem>
                <asp:ListItem Value="1">Productos</asp:ListItem>
                <asp:ListItem Value="2">Empleados</asp:ListItem>
                <asp:ListItem Value="3">Clientes</asp:ListItem>
                <asp:ListItem Value="4">Ventas</asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="rfvTablas" runat="server" ControlToValidate="ddlTablas" ErrorMessage="*Seleccione una Tabla" Font-Names="Times New Roman" Font-Size="Small" ForeColor="Red" InitialValue="-seleccione una tabla-" ValidationGroup="GrupoVer">*Seleccione una Tabla</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnVer" runat="server" BorderStyle="Inset" Text="Ver" ValidationGroup="GrupoVer" OnClick="btnVer_Click" />
        </div>

        <asp:Label ID="Label1" runat="server" Text="Administracion de empleados"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/AgregarEmpleado.aspx">Agregar Empleado</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Administrador/DatosLaboralesEmpleados.aspx">Datos laborales</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Administrador/TablaEmpleados.aspx">Ver empleados</asp:HyperLink>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Administracion de clientes"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Administrador/TablaClientes.aspx">Ver clientes</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Administrador/ClientesInactivos.aspx">Clientes inactivos</asp:HyperLink>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Administracion de Productos"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Administrador/AgregarProducto.aspx">Ver/Agregar productos</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Administrador/MostrarReportes.aspx">Ver reportes</asp:HyperLink>
        <br />
       

    </form>
</body>
</html>