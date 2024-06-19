<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarEmpleado.aspx.cs" Inherits="Vistas.AgregarEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            height: 138px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            STARTAP<br />
            BREWING CO.<br />
            <br />
        </div>
        <br />
        <div class="auto-style4">
            <%--<asp:GridView ID="gvProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="232px" Width="613px" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvProductos_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="Empleado" />
                <asp:BoundField HeaderText="DNI" />
                <asp:BoundField HeaderText="ROL" />
                <asp:BoundField HeaderText="SALARIO" />
                <asp:BoundField HeaderText="HORARIOS" />
                <asp:BoundField HeaderText="TELEFONO" />
                <asp:BoundField HeaderText="ESTADO" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>--%>
        </div>
        <br />
        <asp:Label ID="lblAgregarNuevoEmpleado" runat="server" Text="AGREGAR UN NUEVO EMPLEADO"></asp:Label>
         <br />
        <br />
         <div class="auto-style2">
             Ingrese numero de DNI del Empleado:
            <asp:TextBox ID="txtDNI" runat="server" Width="83px" AutoPostBack="True" CssClass="auto-style1" Height="16px" OnTextChanged="txtDNI_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregardniEmpleado" runat="server" ControlToValidate="txtDNI" ErrorMessage="*Debe Agregar DNI">*Debe Agregar DNI</asp:RequiredFieldValidator>
            &nbsp;<br />
            <br />
             <br />
            <asp:Label ID="lblMensajeUsuario" runat="server"></asp:Label>
             <br />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
             <asp:HyperLink ID="hlRegistrar" runat="server" NavigateUrl="~/Login y Registro/FormularioRegistro.aspx" Visible="False">Ir a Pagina de Registro</asp:HyperLink>
            <br />
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></div>
         <br />
            <asp:Label ID="lblRolEmpleado" runat="server" Text="Rol"></asp:Label>
             &nbsp;<asp:DropDownList ID="ddlRol" runat="server">
             </asp:DropDownList>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvSeleccionRol" runat="server" ControlToValidate="ddlRol" ErrorMessage="*Debe Seleccionar un Rol de empleado.">*Debe Seleccionar un Rol de empleado.</asp:RequiredFieldValidator>
            <br />
        <br />
        <br />
            <asp:Label ID="lblSalarioEmpleado" runat="server" Text="Salario"></asp:Label>
            <asp:TextBox ID="txtSalario" runat="server" Width="83px" AutoPostBack="True" CssClass="auto-style1" Height="16px" OnTextChanged="txtDNI_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSalario" runat="server" ControlToValidate="txtSalario" ErrorMessage="*Debe Colocar un Salario Inicial.">*Debe Colocar un Salario Inicial.</asp:RequiredFieldValidator>
        <br />
        <br />
            <asp:Label ID="lbFechaIngreso" runat="server" Text="Fecha de Ingreso"></asp:Label>
            <asp:TextBox ID="txtFechaIngreso" runat="server" TextMode="Date" Width="83px" AutoPostBack="True" CssClass="auto-style1" Height="16px" OnTextChanged="txtDNI_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFechaIngreso" runat="server" ControlToValidate="txtSalario" ErrorMessage="*Debe Seleccionar una fecha">*Debe Seleccionar una fecha</asp:RequiredFieldValidator>
            <br />
         <br />
            <asp:Label ID="lbHorarios" runat="server" Text="Horarios"></asp:Label>
             <asp:DropDownList ID="ddlHorarios" runat="server">
                 <asp:ListItem Value="1">20 a 2</asp:ListItem>
                 <asp:ListItem Value="2">14 a 20</asp:ListItem>
                 <asp:ListItem Value="3">8 a 14</asp:ListItem>
             </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvHorarios" runat="server" ControlToValidate="ddlHorarios" ErrorMessage="*Debe Seleccionar un rango horario.">*Debe Seleccionar un rango horario.</asp:RequiredFieldValidator>
            <br />
         <br />
            <asp:Label ID="lbEstado" runat="server" Text="Estado Inicial"></asp:Label>
             <asp:CheckBox ID="chbEstadoInicial" runat="server" />
&nbsp;<br />
        <br />
            <asp:Button ID="btnAgregarEmpleado" runat="server" Text="Agregar Empleado" OnClick="btnAgregarProd_Click" />
        <br />
        <br />
    </form>
</body>
        </div>
    </form>
</body>
</html>