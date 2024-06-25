<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudesPedidos.aspx.cs" Inherits="Vistas.Empleado.SolicitudesPedidos" %>
<%@ Register Src="~/Empleado/VistaMenuEmpleado.ascx" TagName="Menu" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 674px;
        }
        .auto-style2 {
            width: 945px;
        }
        .auto-style3 {
            margin-top: 3;
        }
    </style>
</head>
<body class="bodyBlanco">
    <header>
        <uc:menu runat="server" />
    </header>
    <form id="form1" runat="server" class="auto-style2">
        <main class="menu-container"></main>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="TABLA SOLICITUDES DE PEDIDOS"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Filtrar por:"></asp:Label>
            <asp:RadioButtonList ID="rblFiltro" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblFiltro_SelectedIndexChanged">
                <asp:ListItem Text="Todos" Value="Todos"></asp:ListItem>
                <asp:ListItem Text="En espera" Value="EnEspera"></asp:ListItem>
                <asp:ListItem Text="Tomado" Value="Tomado"></asp:ListItem>
                <asp:ListItem Text="Por Mesa" Value="PorMesa"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:DropDownList ID="ddlMesas" runat="server" Visible="False"></asp:DropDownList>
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            <br />
            <br />
            <asp:GridView ID="gvTablaSolicitudesPedidos" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnRowCommand="gvTablaSolicitudesPedidos_RowCommand" Height="290px" Width="888px" CssClass="auto-style3">
                <Columns>
                    <asp:TemplateField HeaderText="IdPedido">
                        <ItemTemplate>
                            <asp:Label ID="IdOrden" runat="server" Text='<%# Eval("IdOrden") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IdCliente">
                        <ItemTemplate>
                            <asp:Label ID="IdUsuario" runat="server" Text='<%# Eval("IdUsuario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IdMesa">
                        <ItemTemplate>
                            <asp:Label ID="IdMesa" runat="server" Text='<%# Eval("IdMesa") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha y hora">
                        <ItemTemplate>
                            <asp:Label ID="Fecha" runat="server" Text='<%# Eval("Fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <asp:Label ID="Total" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:Label ID="EstadoComanda" runat="server" Text='<%# Convert.ToBoolean(Eval("EstadoComanda")) ? "Tomado" : "En espera" %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tomar Pedido">
                        <ItemTemplate>
                            <asp:LinkButton CssClass="hyperlink" ID="Confirmar" runat="server" 
                                CommandArgument='<%# Eval("IdOrden") %>'
                                CommandName="Confirmar" 
                                Text="Tomar Pedido" 
                                OnClientClick="return confirm('¿Estás seguro de cambiar el estado del producto?');"></asp:LinkButton> 
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
