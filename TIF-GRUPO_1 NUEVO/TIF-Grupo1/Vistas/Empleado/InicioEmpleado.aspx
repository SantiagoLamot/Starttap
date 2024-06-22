<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioEmpleado.aspx.cs" Inherits="Vistas.Empleado.InicioEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Font-Size="XX-Large" Text="STARTAP BREWING CO." ID="ctl02" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" Text="Bienvenido al menu de empleado, elija su puesto de trabajo!"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="hyper_Mozo" runat="server" NavigateUrl="~/Empleado/InicioMozo.aspx">Mozo</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hyper_Cocinero" runat="server" NavigateUrl="~/Empleado/InicioCocinero.aspx">Cocinero</asp:HyperLink>
        </div>
    </form>
</body>
</html>
