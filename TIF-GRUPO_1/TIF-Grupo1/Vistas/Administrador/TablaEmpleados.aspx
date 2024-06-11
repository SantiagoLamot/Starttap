<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaEmpleados.aspx.cs" Inherits="Vistas.Administrador.TablaEmpleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblTabladeEmpleados" runat="server" Font-Size="Medium" Text="TABLA DE EMPLEADOS"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvEmpleados" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Id"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre y Apellido"></asp:TemplateField>
                    <asp:TemplateField HeaderText="DNI"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Salario"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha de ingreso"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Horarios"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado"></asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
