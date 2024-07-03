<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarReservas.aspx.cs" Inherits="Vistas.Empleado.ListarReservas" %>
<%@ Register Src="~/Empleado/VistaMenuEmpleado.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 637px;
        }
    </style>
</head>
    <header><uc:menu runat="server" /> </header>
<body class="bodyBlanco">
    <form id="form1" runat="server" class="auto-style1">
        <main class="menu-container"></main>
        <asp:Label ID="lblNombreUsuario" runat="server" CssClass="nombre-usuario"></asp:Label>
        <div>
            <asp:Label ID="lblListadesolicitudes" runat="server" Text="RESERVAS" CssClass="labelPrincipal"></asp:Label>
            <br />
            Seleccione una fecha:
            <br />
            <asp:TextBox ID="tbFecha" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Date" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:GridView ID="gvReservas" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Nombre y apellido">
                        <ItemTemplate>
                            <asp:Label ID="lblCliente_IT" runat="server" Text='<%# Bind("Cliente") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mesa">
                        <ItemTemplate>
                            <asp:Label ID="lblNumMesa_IT" runat="server" Text='<%# Bind("NumMesa") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha">
                        <ItemTemplate>
                            <asp:Label ID="lblFecha_IT" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comensales">
                        <ItemTemplate>
                            <asp:Label ID="lblComensales_IT" runat="server" Text='<%# Bind("Comensales") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            </asp:GridView>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
