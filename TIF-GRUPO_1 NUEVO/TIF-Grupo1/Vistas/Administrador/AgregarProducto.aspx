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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="232px" Width="507px">
        </asp:GridView>
        <br />
        <asp:Label ID="lblAgregarnuevoProducto" runat="server" Text="AGREGAR UN NUEVO PRODUCTO"></asp:Label>
        <br />
        <div class="auto-style2">
            <asp:Label ID="lblNombreproducto" runat="server" Text="Nombre del Producto"></asp:Label>
            <asp:TextBox ID="txtNombreProducto" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarNombreProducto" runat="server" ControlToValidate="txtNombreProducto" ErrorMessage="*Debe Agregar un Nombre">*Debe Agregar un Nombre</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<br />
            <asp:Label ID="lblDescripciondelProducto" runat="server" Text="Descripcion del Producto"></asp:Label>
            <asp:TextBox ID="txtDescripcionProducto" runat="server" CssClass="auto-style1" MaxLength="200" Rows="2" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarDescripcionProducto" runat="server" ControlToValidate="txtDescripcionProducto" ErrorMessage="*Debe Agregar una descripcion">*Debe Agregar una descripcion</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblCostoProd" runat="server" Text="Costo"></asp:Label>
            <asp:TextBox ID="txtCostoProd" runat="server" TextMode="Number" Width="45px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarCostoProd" runat="server" ControlToValidate="txtCostoProd" ErrorMessage="*Debe Agregar un costo">*Debe Agregar un costo</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblPrecioProd" runat="server" Text="Precio"></asp:Label>
            <asp:TextBox ID="txtPrecioProducto" runat="server" TextMode="Number" Width="45px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarPrecioProd" runat="server" ControlToValidate="txtPrecioProducto" ErrorMessage="*Debe Agregar un precio">*Debe Agregar un precio</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="cvBeneficio" runat="server" ControlToValidate="txtPrecioProducto" ErrorMessage="El precio debe garantizar un beneficio del 80% sobre el costo">El precio debe garantizar un beneficio del 80% sobre el costo</asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="lblStockInicial" runat="server" Text="Stock Inicial"></asp:Label>
            <asp:TextBox ID="txtStockInicial" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarStockInicial" runat="server" ControlToValidate="txtStockInicial" ErrorMessage="*Debe Agregar un stock inicial">*Debe Agregar un stock inicial</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblImagenURL" runat="server" Text="Imagen del Producto"></asp:Label>
            <asp:TextBox ID="txtImagenURL" runat="server" TextMode="Url"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregarImagenProd" runat="server" ControlToValidate="txtStockInicial" ErrorMessage="*Debe Agregar una Imagen de Producto">*Debe Agregar una Imagen de Producto</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Label ID="lblCategoriadelProd" runat="server" Text="Categoria del Producto"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="rbtnCategoriaProducto" runat="server">
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="lblEstadoInicial" runat="server" Text="Estado Inicial"></asp:Label>
            <asp:CheckBox ID="chbEstadoInicial" runat="server" Checked="True" Text="Disponible" />
            <br />
            <br />
            <asp:Button ID="btnAgregarProd" runat="server" Text="Agregar Producto" />
            <br />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Me faltan agregar mas validadores.</span></div>
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
