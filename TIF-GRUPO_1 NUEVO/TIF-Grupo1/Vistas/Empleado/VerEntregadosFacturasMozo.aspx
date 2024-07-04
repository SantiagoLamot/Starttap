<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerEntregadosFacturasMozo.aspx.cs" Inherits="Vistas.Empleado.VerEntregados" %>
<%@ Register Src="~/Empleado/VistaMenuEmpleado.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            width: 769px;
            margin-left: 0px;
            margin-right: 229px;
        }
    </style>
</head>
    <header><uc:menu runat="server" /> </header>
<body class="bodyBlanco">
    <form id="form1" runat="server" class="auto-style2">
        <main class="menu-container"></main>
        <div>
            <br />
            <br />
            Listado de ordenes entregadas y su facturacion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:GridView ID="gv_Entregados" runat="server" AllowPaging="True" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gv_Entregados_PageIndexChanging" AutoGenerateColumns="False" OnRowCommand="gv_Entregados_RowCommand">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Numero de Orden">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_idOrden" runat="server" Text='<%# Bind("IdOrden") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Numero de Mesa">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_idMesa" runat="server" Text='<%# Bind("IdMesa") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Fecha" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField CommandName="eventoVerDetalles" Text="VER DETALLES" />
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Total" runat="server" Text='<%# Bind("Total") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Buscar por numero de orden:"></asp:Label>
            <asp:TextBox ID="tb_IdOrden" runat="server" ValidationGroup="GP"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_buscar" runat="server" ControlToValidate="tb_IdOrden" ErrorMessage="Ingrese un valor" ValidationGroup="GP">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_buscar" runat="server" ControlToValidate="tb_IdOrden" ErrorMessage="Ingrese un valor numerico" ValidationExpression="^\d+$" ValidationGroup="GP">*</asp:RegularExpressionValidator>
            <asp:Button ID="btn_Buscar" runat="server" OnClick="btn_Buscar_Click" Text="Buscar" ValidationGroup="GP" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="GP" />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gv_OrdenEspecifica" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="gv_OrdenEspecifica_RowCommand">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Numero de Orden">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_IdOrden" runat="server" Text='<%# Bind("IdOrden") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Numero de Mesa">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_IdMesa" runat="server" Text='<%# Bind("IdMesa") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Fecha" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField CommandName="eventoVerDetallesOrden" Text="VER DETALLES" />
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Total" runat="server" Text='<%# Bind("Total") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:Button ID="btn_Ocultar" runat="server" OnClick="btn_Ocultar_Click" Text="Ocultar" Visible="False" />
            <br />
            <br />
            <asp:Label ID="lblMensaje2" runat="server"></asp:Label>
            <asp:GridView ID="gv_Detalles" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:Button ID="btn_OcultarDetalles" runat="server" OnClick="btn_OcultarDetalles_Click" Text="Ocultar detalles" Visible="False" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
