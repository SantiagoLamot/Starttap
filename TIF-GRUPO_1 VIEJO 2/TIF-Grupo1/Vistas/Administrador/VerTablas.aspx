<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerTablas.aspx.cs" Inherits="Vistas.Administrador.VerTablas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<body>
    <form id="form1" runat="server">
        <div>
            
            <v:imagedata croptop="-65520f" cropbottom="65520f" xmlns:v="urn:schemas-microsoft-com:vml"/></v:shape></span><![endif]-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STARTAP<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BREWING CO<br />
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
    </form>
</body>
</html>
