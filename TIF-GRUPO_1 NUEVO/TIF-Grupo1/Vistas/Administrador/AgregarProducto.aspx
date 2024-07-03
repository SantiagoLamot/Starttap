<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="Vistas.AgregarProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Producto</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-xxxxxx" crossorigin="anonymous" />
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .bodyLogoColor {
            background-image: url("/Imagenes/imagen01.jpeg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .bodyBlanco {
            background-image: url("/Imagenes/imagen02.jpeg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .form-container {
            width: 700px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        .labelPrincipal {
            font-size: 30px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
            display: block;
            width: 100%;
            text-align: center;
        }

        .auto-style2 {
            width: 96%;
            text-align: left;
            padding: 20px;
        }

        .gvProductos {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        .gvProductos th,
        .gvProductos td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .gvProductos th {
            background-color: #f2f2f2;
            color: #333;
            font-weight: bold;
        }

        .gvProductos tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .gvProductos tr:hover {
            background-color: #ff6a00;
        }

        .BotonPrincipal {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 25px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            cursor: pointer;
            padding: 15px 32px;
            font-size: 16px;
            transition-duration: 0.4s;
            width: 100%;
            text-align: center;
            margin-top: 10px;
        }

        .BotonPrincipal:hover {
            background-color: white;
            color: black;
        }

        .hyperlink,
        .hyperlinkParaListadoDeFunciones {
            display: block;
            width: 100%;
            text-align: center;
        }
        .auto-style4 {
            width: 94%;
            text-align: left;
            padding: 20px;
        }
        .auto-style5 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #007bff;
            color: white;
            border-radius: 25px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            cursor: pointer;
            padding: 15px 32px;
            font-size: 16px;
            transition-duration: 0.4s;
            text-align: center;
            margin-top: 10px;
        }
        .auto-style6 {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .auto-style7 {
            margin-top: 20px;
            border-collapse: collapse;
        }
        .auto-style8 {
            width: 700px;
            margin: 177px auto 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }
        .icon-left {
            margin-right: 5px;
        }
    </style>
</head>
<body class="bodyBlanco">
    <form id="form1" runat="server">
        <div class="auto-style8">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/VerTablas.aspx">
            <span class="icon-left"><i class="fas fa-home"></i></span> Ir a Página Inicio
            </asp:HyperLink>
            <asp:Label ID="lblTabladeProductos" runat="server" Text="TABLA DE PRODUCTOS" CssClass="labelPrincipal"></asp:Label>
            <br />
            <div class="auto-style4">
                <asp:GridView ID="gvProductos" runat="server" CssClass="auto-style7"
                    AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                    OnPageIndexChanging="gvProductos_PageIndexChanging" OnRowCommand="gvProductos_RowCommand" Height="434px" Width="665px">
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
                                    OnClientClick="return confirm('¿Estás seguro de cambiar el estado del producto?');"></asp:LinkButton>                   
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Actualizar Stock">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbActualizarStock" runat="server" CommandArgument='<%# Eval("Nombre") %>' CommandName="ActualizarStock" Text="Actualizar" 
                                    OnClientClick ="return confirm('¿Estás seguro de cambiar el estado del producto?');">
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
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="lblActualizarStock" runat="server" CssClass="labelPrincipal" Text="ACTUALIZAR STOCK"></asp:Label>
                Nuevo Stock:
                <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" Width="49px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAgregarStock" runat="server" ControlToValidate="txtCantidad" ErrorMessage="*Debe Agregar un stock "></asp:RequiredFieldValidator>
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="lblAgregarnuevoProducto" runat="server" Text="AGREGAR UN NUEVO PRODUCTO" CssClass="labelPrincipal"></asp:Label>
            <br />
            <div class="auto-style2">
                <asp:Label ID="lblNombreproducto" runat="server" Text="Nombre del Producto"></asp:Label>
                <asp:TextBox ID="txtNombreProducto" runat="server" CssClass="auto-style6" Width="663px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAgregarNombreProducto" runat="server" ControlToValidate="txtNombreProducto" ErrorMessage="*Debe Agregar un Nombre" ValidationGroup="GAgregarNuevo"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblDescripciondelProducto" runat="server" Text="Descripción del Producto"></asp:Label>
                <asp:TextBox ID="txtDescripcionProducto" runat="server" CssClass="auto-style6" MaxLength="200" Rows="2" TextMode="MultiLine" Width="664px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAgregarDescripcionProducto" runat="server" ControlToValidate="txtDescripcionProducto" ErrorMessage="*Debe Agregar una descripción" ValidationGroup="GAgregarNuevo"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblPrecioProd" runat="server" Text="Precio"></asp:Label>
                <asp:TextBox ID="txtPrecioProducto" runat="server" TextMode="Number" Width="45px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAgregarPrecioProd" runat="server" ControlToValidate="txtPrecioProducto" ErrorMessage="*Debe Agregar un precio" ValidationGroup="GAgregarNuevo"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblStockInicial" runat="server" Text="Stock Inicial"></asp:Label>
                <asp:TextBox ID="txtStockInicial" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAgregarStockInicial" runat="server" ControlToValidate="txtStockInicial" ErrorMessage="*Debe Agregar un stock inicial" ValidationGroup="GAgregarNuevo"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblImagenURL" runat="server" Text="Imagen del Producto"></asp:Label>
                <asp:TextBox ID="txtImagenURL" runat="server" TextMode="Url"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAgregarImagenProd" runat="server" ControlToValidate="txtImagenURL" ErrorMessage="*Debe Agregar una Imagen de Producto" ValidationGroup="GAgregarNuevo"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <asp:Label ID="lblCategoriadelProd" runat="server" Text="Categoría del Producto"></asp:Label>
                <asp:DropDownList ID="ddlCategorias" runat="server"></asp:DropDownList>
                <br />
                <asp:Label ID="lblEstadoInicial" runat="server" Text="Estado Inicial"></asp:Label>
                <asp:CheckBox ID="chbEstadoInicial" runat="server" Checked="True" Text="Disponible" />
                <br />
                <br />
                <br />
                <asp:Button ID="btnAgregarProd" runat="server" Text="Agregar Producto" OnClick="btnAgregarProd_Click" ValidationGroup="GAgregarNuevo" CssClass="auto-style5" Width="676px" />
                <br />
                <br />
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </div>
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
