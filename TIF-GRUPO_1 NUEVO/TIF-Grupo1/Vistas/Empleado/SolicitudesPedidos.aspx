<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudesPedidos.aspx.cs" Inherits="Vistas.Empleado.SolicitudesPedidos" %>
<%@ Register Src="~/Empleado/VistaMenuEmpleado.ascx" TagName="Menu" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style type="text/css">
        .auto-style2 {
            width: 945px;
        }
        .auto-style5 {
            display: flex;
            justify-content: center;
            align-items: center; 
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
            <br />
            <br />
            <asp:TextBox ID="txtFechaFiltro" runat="server" AutoPostBack="True" TextMode="Date" Height="23px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtFechaFiltro" ErrorMessage="Ingrese una fecha válida" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="btnFiltrar" CssClass="BotonPrincipal" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            <br />
            <br />
            <asp:GridView ID="gvTablaSolicitudesPedidos"  runat="server" AllowPaging="True" AutoGenerateColumns="False" OnRowCommand="gvTablaSolicitudesPedidos_RowCommand"  Height="332px" Width="911px"  >
    <Columns>
        <asp:TemplateField HeaderText="IdPedido">
            <ItemTemplate>
                <asp:Label ID="IdOrden" runat="server" Text='<%# Eval("IdOrden") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Cliente">
            <ItemTemplate>
                <asp:Label ID="IdUsuario" runat="server" Text='<%# Eval("NombreUsuario") %>'></asp:Label>
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
        <asp:TemplateField HeaderText="Pedidos Listos">
            <ItemTemplate>
                <asp:LinkButton ID="lbVerEstado" CssClass="hyperlink" runat="server" CommandArgument='<%# Eval("IdOrden") %>' CommandName="Ver Estado">Ver Estado</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

            <br />
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView ID="gvEstadoPreparacion" runat="server" AutoGenerateColumns="False" Width="258px">
                    <Columns>
                        <asp:TemplateField HeaderText="Cliente">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("NombreUsuario") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Listo">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Convert.ToBoolean(Eval("EstadoPreparacion")) ? "Si" : "Aun no" %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TOTAL">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("IdOrden") %>'></asp:Label>
                    </EmptyDataTemplate>
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
