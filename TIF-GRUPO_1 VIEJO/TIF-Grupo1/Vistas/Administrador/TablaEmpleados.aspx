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
                    <asp:TemplateField HeaderText="IdEmpleado">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdUsuario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre y Apellido">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") + " " + Bind("Apellido") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DNI">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salario">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Salario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha de ingreso">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("FechaIngreso") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Horarios">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Horarios") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
