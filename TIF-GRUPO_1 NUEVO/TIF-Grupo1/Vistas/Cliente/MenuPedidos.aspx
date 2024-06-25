<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPedidos.aspx.cs" Inherits="Vistas.Cliente.Menu" %>
<%@ Register Src="~/Cliente/VistaMenuCliente.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleGeneral.css"/>
    <link rel="stylesheet" type="text/css" href="../Estilos/StyleMenu.css"/>

   
  
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 1636px;
            margin-left: 112px;
            margin-right: 472px;
            height: 986px;
        }
        .auto-style3 {
            font-size: 20px;
            color: #666;
            margin: 10px 0 0 0;
            width: 123px;
        }
        .auto-style4 {
            font-size: 1em;
            color: #666;
            margin: 10px 36px 0 0;
            width: 1602px;
        }
        .auto-style5 {
            width: 98%;
            margin: 0 0px 0 0;
            height: 462px;
        }
        .auto-style6 {
            font-size: 0.5em;
        }
        .auto-style7 {
            font-size: 1.5em;
            margin: 26 0 0 0;
            color: #333;
            width: 214px;
            height: 119px;
        }
        .auto-style8 {
            font-family: Arial, sans-serif;
            font-size: 20px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
            display: block;
            text-align: center;
        }
    </style>

   
  
</head>
  <header><uc:menu runat="server" /> </header>
  
    <body class="bodyBlanco"/>
   <form id="form1" runat="server" class="auto-style2">
        <main class="menu-container"></main>
            <div class="auto-style4">
                <asp:Label ID="LabelBebidas" runat="server" Text="Bebidas:" CssClass="auto-style3"></asp:Label>
                <br />
                <asp:DataList ID="DataListBebidas" runat="server" DataSourceID="SqlDataSourceBebidas" RepeatColumns="6" CssClass="menu-datalist" Height="149px" Width="82px" ShowFooter="False" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="menu-item">
                            <h3 class="auto-style7">
                                <asp:Image ID="ImageB" runat="server" ImageUrl='<%# Eval("Imagen_URL") %>' Height="100px" />
                            </h3>
                            <p class="menu-item-description">
                                <asp:Label ID="lblNombreB" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblDescripcionB" runat="server" CssClass="auto-style6" Text='<%# Eval("Descripcion") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblPrecioB" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblEstadoB" runat="server" Text='<%# Convert.ToBoolean(Eval("Estado")) ? "Disponible" : "No Disponible" %>'></asp:Label>
                            </p>
                            <p class="menu-item-description" id="CantidadesB">
                                <asp:Label ID="lblCantidadB" runat="server" Text="Cantidad"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtCantidadB" runat="server" Height="16px" TextMode="Number" Width="41px"></asp:TextBox>
                            </p>
                            <p class="menu-item-description">
                                <asp:CompareValidator ID="cvSuperaStock" runat="server" ControlToValidate="txtCantidadB" CssClass="auto-style6" Display="Dynamic" ErrorMessage="*La Cantidad Ingresada Supera el Stock Disponible" ForeColor="#CC3300" Operator="LessThanEqual" Type="Integer" ValueToCompare="100"></asp:CompareValidator>
                            </p>
                            <p class="menu-item-description">
                                <asp:Button ID="btnAgregarCarritoB" runat="server" Text="Agregar al Carrito" CommandName="eAgregarCarritoB"
                                    OnCommand="btnAgregarCarritoB_Command" CommandArgument='<%# Eval("Nombre") %>' />
                            </p>
                        </div>
                     </ItemTemplate>
               </asp:DataList>

            </div>
            <div class="auto-style5">
                <asp:Label ID="LabelComidas" runat="server" Text="Comidas:" CssClass="auto-style8" Width="138px"></asp:Label>
                <asp:DataList ID="DataListBebidas0" runat="server" DataSourceID="SqlDataSourceComidas" RepeatColumns="6" CssClass="menu-datalist" Height="149px" Width="82px" ShowFooter="False" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="menu-item">
                            <h3 class="auto-style7">
                                <asp:Image ID="ImageC" runat="server" ImageUrl='<%# Eval("Imagen_URL") %>' Height="100px" />
                            </h3>
                            <p class="menu-item-description">
                                <asp:Label ID="lblNombreC" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblDescripcionC" runat="server" CssClass="auto-style6" Text='<%# Eval("Descripcion") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblPrecioC" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblEstadoC" runat="server" Text='<%# Convert.ToBoolean(Eval("Estado")) ? "Disponible" : "No Disponible" %>'></asp:Label>
                            </p>
                            <p class="menu-item-description" id="CantidadesB0">
                                <asp:Label ID="lblCantidadC" runat="server" Text="Cantidad"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtCantidadC" runat="server" Height="16px" TextMode="Number" Width="41px"></asp:TextBox>
                            </p>
                            <p class="menu-item-description">
                                <asp:CompareValidator ID="cvSuperaStockC" runat="server" ControlToValidate="txtCantidadC" CssClass="auto-style6" Display="Dynamic" ></asp:CompareValidator>
                            </p>
                            <p class="menu-item-description">
                                <asp:Button ID="btnAgregarCarritoC" runat="server" Text="Agregar al Carrito" CommandName="eAgregarCarritoC"
                                    OnCommand="btnAgregarCarritoC_Command" CommandArgument='<%# Eval("Nombre") %>' />
                            </p>
                        </div>
                     </ItemTemplate>
               </asp:DataList>

            </div>
        
        <asp:SqlDataSource ID="SqlDataSourceBebidas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Programacion3_TIFConnectionString %>" 
            SelectCommand="SELECT p.IdProducto, p.Nombre, p.Descripcion, p.Precio, p.Imagen_URL, p.Estado FROM Productos p INNER JOIN Categoria_Productos cp ON p.IdProducto = cp.IdProducto WHERE cp.IdCategoria = 2"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceComidas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Programacion3_TIFConnectionString %>" 
            SelectCommand="SELECT p.IdProducto, p.Nombre, p.Descripcion, p.Precio, p.Imagen_URL, p.Estado FROM Productos p INNER JOIN Categoria_Productos cp ON p.IdProducto = cp.IdProducto WHERE cp.IdCategoria = 1"></asp:SqlDataSource>
                <asp:Label ID="lblMensaje" runat="server" CssClass="labelPrincipal"></asp:Label>
        <br />
        <p>
        
            &nbsp;</p>
    </form>
</body>
</html>
