<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPedidos.aspx.cs" Inherits="Vistas.Cliente.Menu" %>
<%@ Register Src="~/Menu.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 93%;
            margin: 0;
        }
        .auto-style2 {
            width: 647px;
        }
        .auto-style3 {
            font-family: Arial, sans-serif;
            font-size: 30px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
            display: block;
            width: 100%;
            text-align: center;
            margin-right: 14px;
        }
        .auto-style4 {
            width: 100%;
            margin: 0 23 0 0;
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
                <asp:DataList ID="DataListBebidas" runat="server" DataSourceID="SqlDataSourceBebidas" RepeatColumns="2" CssClass="menu-datalist" Height="1123px" Width="638px">
                    <ItemTemplate>
                        <div class="menu-item">
                            <h3 class="menu-item-name">
                                <asp:Label ID="lblNombreB" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                                <asp:Image ID="ImageB" runat="server" ImageUrl='<%# Eval("Imagen_URL") %>' />
                            </h3>
                            <p class="menu-item-description">
                                <asp:Label ID="lblDescripcionB" runat="server" Text='<%# Eval("Descripcion") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblPrecioB" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                            </p>
                            <p class="menu-item-description">
                                <asp:Label ID="lblEstadoB" runat="server" Text='<%# Convert.ToBoolean(Eval("Estado")) ? "Disponible" : "No Disponible" %>'></asp:Label>
                            </p>
                            <p class="menu-item-description" id="Cantidades">
                                <asp:Label ID="lblCantidad" runat="server" Text="Cantidad"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtCantidadB" runat="server" Height="17px" TextMode="Number" Width="26px"></asp:TextBox>
                            </p>
                            <p class="menu-item-description">
                                <asp:Button ID="btnAgregarCarritoB" runat="server" Text="Agregar al Carrito" CommandName="eAgregarCarritoB"
                                    OnCommand="btnAgregarCarritoB_Command" CommandArgument='<%# Eval("Nombre") %>' />
                            </p>
                        </div>
                     </ItemTemplate>
               </asp:DataList>

            </div>
            <div class="menu-section">
                <asp:Label ID="lblMensaje" runat="server" CssClass="labelPrincipal"></asp:Label>
                <asp:Label ID="LabelComidas" runat="server" Text="Comidas:" CssClass="labelPrincipal"></asp:Label>
            </div>
        
        <asp:SqlDataSource ID="SqlDataSourceBebidas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Programacion3_TIFConnectionString %>" 
            SelectCommand="SELECT p.IdProducto, p.Nombre, p.Descripcion, p.Precio, p.Imagen_URL, p.Estado FROM Productos p INNER JOIN Categoria_Productos cp ON p.IdProducto = cp.IdProducto WHERE cp.IdCategoria = 2"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceComidas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Programacion3_TIFConnectionString %>" 
            SelectCommand="SELECT p.IdProducto, p.Nombre, p.Descripcion, p.Precio, p.Imagen_URL, p.Estado FROM Productos p INNER JOIN Categoria_Productos cp ON p.IdProducto = cp.IdProducto WHERE cp.IdCategoria = 1"></asp:SqlDataSource>
        <br />
        <p>
        
            &nbsp;</p>
    </form>
</body>
</html>
