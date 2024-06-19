<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="Vistas.AgregarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 715px;
        }
        .auto-style3 {
            color: #660066;
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
        <asp:Label ID="lblTabladeProductos" runat="server" Text="TABLA DE PRODUCTOS"></asp:Label>
        <br />
        <div class="auto-style4">
        <asp:GridView ID="gvProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="232px" Width="613px" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvProductos_PageIndexChanging" OnRowCommand="gvProductos_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Identificador">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdProducto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stock">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Precio">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Disponibilidad">
                    <ItemTemplate>
                        <asp:Label ID="lblDisponibilidad" runat="server" Text='<%# Convert.ToBoolean(Eval("Estado")) ? "Disponible" : "No Disponible" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Estado">
                    <ItemTemplate>
                            <asp:LinkButton ID="lbCambiarEstado" runat="server" 
                                CommandArgument='<%# Eval("IdProducto") %>' 
                                CommandName="CambiarEstado"
                                Text="Cambiar Estado"
                                OnClientClick="return confirm('¿Estás seguro de cambiar el estado del producto?');">
                            </asp:LinkButton>                   
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
        </div>
        <br />
        <asp:Label ID="lblAgregarnuevoProducto" runat="server" Text="AGREGAR UN NUEVO PRODUCTO"></asp:Label>
        <br />
        <div class="auto-style2">
            <asp:Label ID="lblNombreproducto" runat="server" Text="Nombre del Producto"></asp:Label>
            <asp:TextBox ID="txtNombreProducto" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarNombreProducto" runat="server" ControlToValidate="txtNombreProducto" ErrorMessage="*Debe Agregar un Nombre" ValidationGroup="GAgregarNuevo">*Debe Agregar un Nombre</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<br />
            <asp:Label ID="lblDescripciondelProducto" runat="server" Text="Descripcion del Producto"></asp:Label>
            <asp:TextBox ID="txtDescripcionProducto" runat="server" CssClass="auto-style1" MaxLength="200" Rows="2" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarDescripcionProducto" runat="server" ControlToValidate="txtDescripcionProducto" ErrorMessage="*Debe Agregar una descripcion" ValidationGroup="GAgregarNuevo">*Debe Agregar una descripcion</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="lblPrecioProd" runat="server" Text="Precio"></asp:Label>
            <asp:TextBox ID="txtPrecioProducto" runat="server" TextMode="Number" Width="45px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarPrecioProd" runat="server" ControlToValidate="txtPrecioProducto" ErrorMessage="*Debe Agregar un precio" ValidationGroup="GAgregarNuevo">*Debe Agregar un precio</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblStockInicial" runat="server" Text="Stock Inicial"></asp:Label>
            <asp:TextBox ID="txtStockInicial" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarStockInicial" runat="server" ControlToValidate="txtStockInicial" ErrorMessage="*Debe Agregar un stock inicial" ValidationGroup="GAgregarNuevo">*Debe Agregar un stock inicial</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblImagenURL" runat="server" Text="Imagen del Producto"></asp:Label>
            <asp:TextBox ID="txtImagenURL" runat="server" TextMode="Url"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarImagenProd" runat="server" ControlToValidate="txtStockInicial" ErrorMessage="*Debe Agregar una Imagen de Producto" ValidationGroup="GAgregarNuevo">*Debe Agregar una Imagen de Producto</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="lblCategoriadelProd" runat="server" Text="Categoria del Producto"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlCategorias" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Label ID="lblEstadoInicial" runat="server" Text="Estado Inicial"></asp:Label>
            <asp:CheckBox ID="chbEstadoInicial" runat="server" Checked="True" Text="Disponible" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnAgregarProd" runat="server" Text="Agregar Producto" OnClick="btnAgregarProd_Click" ValidationGroup="GAgregarNuevo" />
            <br />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>

