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
            <asp:Label runat="server" Text="Modificar el salario de un empleado particular:" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label runat="server" Text="Ingrese ID:"></asp:Label>
            <asp:TextBox ID="tb_idEmpleado" runat="server" Height="16px" ValidationGroup="GP1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_IdEmpleado" runat="server" ControlToValidate="tb_idEmpleado" ErrorMessage="Ingrese datos en el campo Id" ValidationGroup="GP1">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_IdEmpleado" runat="server" ControlToValidate="tb_idEmpleado" ErrorMessage="Ingrese solo numeros en id" ValidationExpression="^\d+$" ValidationGroup="GP1">*</asp:RegularExpressionValidator>
            <asp:Label runat="server" Text="Ingrese nuevo salario:"></asp:Label>
            <asp:TextBox ID="tb_NuevoSalario" runat="server" ValidationGroup="GP1"></asp:TextBox>
            <asp:RegularExpressionValidator ID="rev_NuevoSalario" runat="server" ControlToValidate="tb_NuevoSalario" ErrorMessage="Ingrese un monto valido" ValidationExpression="^\d+$" ValidationGroup="GP1">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfv_NuevoSalario" runat="server" ControlToValidate="tb_NuevoSalario" ErrorMessage="Ingrese un monto " ValidationGroup="GP1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btn_CambioIdEmpleado" runat="server" OnClick="btn_CambioIdEmpleado_Click" Text="Ejecutar cambios" ValidationGroup="GP1" />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
            <asp:ValidationSummary ID="vs_EmpladoParticular" runat="server" ValidationGroup="GP1" />
            <br />
            <asp:Label runat="server" Font-Bold="True" Text="Dar aumento a puesto de empleo:"></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" Text="Ingrese Id del rol:"></asp:Label>
            <asp:TextBox ID="tb_IdRol" runat="server" ValidationGroup="GP2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_IdRol" runat="server" ControlToValidate="tb_IdRol" ErrorMessage="Ingrese un numero de ID" ValidationGroup="GP2">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_IdRol" runat="server" ControlToValidate="tb_IdRol" ErrorMessage="Ingrese un numero en ID" ValidationExpression="^\d+$" ValidationGroup="GP2">*</asp:RegularExpressionValidator>
            <asp:Label runat="server" Text="Monto a incrementar:"></asp:Label>
            <asp:TextBox ID="tb_incremento" runat="server" ValidationGroup="GP2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_MontoIncremento" runat="server" ControlToValidate="tb_incremento" ErrorMessage="Ingrese un monto" ValidationGroup="GP2">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_montoIncremento" runat="server" ControlToValidate="tb_incremento" ErrorMessage="Ingrese un monto valido" ValidationExpression="^\d+$" ValidationGroup="GP2">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="btn_salarioEmpleados" runat="server" OnClick="btn_salarioEmpleados_Click" Text="Ejecutar cambios" ValidationGroup="GP2" />
            <asp:Label ID="lblMensaje1" runat="server"></asp:Label>
            <br />
            <asp:ValidationSummary ID="vs_IncrementoEmpleados" runat="server" ValidationGroup="GP2" />
            <br />
            <asp:Label runat="server" Font-Bold="True" Text="Modificar estado de un Empleado por IdEmpleado:"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="tb_idEmpleadoEstado" runat="server" ValidationGroup="GP3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_Estado" runat="server" ControlToValidate="tb_idEmpleadoEstado" ErrorMessage="Ingrese un ID" ValidationGroup="GP3">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REV_IdEstado" runat="server" ControlToValidate="tb_idEmpleadoEstado" ErrorMessage="Ingrese un ID valido" ValidationExpression="^\d+$" ValidationGroup="GP3">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="btnCambiarEstado" runat="server" OnClick="btnCambiarEstado_Click" Text="Cambiar estado" ValidationGroup="GP3" />
            <asp:Label ID="lblMensaje2" runat="server"></asp:Label>
            <br />
            <asp:ValidationSummary ID="vs_IdEstado" runat="server" ValidationGroup="GP3" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
