<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosLaboralesEmpleados.aspx.cs" Inherits="Vistas.Administrador.DatosLaboralesEmpleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="ll" runat="server" Font-Size="XX-Large" Text="STARTAP BREWING CO"></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" Text="Manejo de los salarios  y estado de los empleados "></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvEmpleados" runat="server">
            </asp:GridView>
            <br />
            <asp:Label runat="server" Text="Modificar el salario de un empleado particular:"></asp:Label>
            <br />
            <asp:Label runat="server" Text="Ingrese ID:"></asp:Label>
            <asp:TextBox ID="tb_idEmpleado" runat="server"></asp:TextBox>
            <br />
            <asp:Label runat="server" Text="Ingrese nuevo salario:"></asp:Label>
            <asp:TextBox ID="tb_NuevoSalario" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_CambioIdEmpleado" runat="server" OnClick="btn_CambioIdEmpleado_Click" Text="Ejecutar cambios:" />
            <br />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
