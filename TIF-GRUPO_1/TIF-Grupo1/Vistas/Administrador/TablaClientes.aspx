<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaClientes.aspx.cs" Inherits="Vistas.Administrador.TablaClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="TABLA DE CLIENTES"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Id Cliente"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre y Apellido"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Documento"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Direccion"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono"></asp:TemplateField>
                    <asp:ButtonField ButtonType="Button" CommandName="eventoDarBajaCliente" Text="Dar de baja" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
