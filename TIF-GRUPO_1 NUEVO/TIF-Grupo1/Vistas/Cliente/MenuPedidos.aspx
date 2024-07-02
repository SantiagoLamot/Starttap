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
        .auto-style4 {
            font-size: 1em;
            color: #666;
            margin: 10px 36px 0 0;
            width: 1602px;
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
            width: 100%;
            text-align: center;
        }
    </style>

   
  
</head>
  <header><uc:menu runat="server" /> </header>
  
    <body class="bodyBlanco"/>
   <form id="form1" runat="server" class="auto-style2">
        <main class="menu-container"></main>
            <div class="auto-style4">
                <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style8"></asp:Label>
                <br />
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
                                <asp:TextBox ID="txtCantidadB"  runat="server" Height="22px" TextMode="Number" Width="41px"></asp:TextBox>
                            </p>
                            <p class="menu-item-description">
                                &nbsp;</p>
                            <p class="menu-item-description">
                                <asp:RangeValidator ID="rNoNegativo" runat="server" ControlToValidate="txtCantidadB" ErrorMessage="*Ingrese una Cantidad Valida" ForeColor="#CC3300" MaximumValue="200" MinimumValue="1" SetFocusOnError="True" Type="Integer" ValidationGroup="G1"></asp:RangeValidator>
                            </p>
                            <p class="menu-item-description">
                                <asp:Button ID="btnAgregarCarritoB" CssClass="BotonPrincipal" runat="server" Text="Agregar al Carrito" CommandName="eAgregarCarritoB"
                                    OnCommand="btnAgregarCarritoB_Command" CommandArgument='<%# Eval("Nombre") %>' ValidationGroup="G1" />
                            </p>
                        </div>
                     </ItemTemplate>
               </asp:DataList>

            </div>
        
        <asp:SqlDataSource ID="SqlDataSourceBebidas" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Programacion3_TIFConnectionString %>" 
            SelectCommand="SELECT IdProducto, Nombre, Descripcion, Precio, Imagen_URL, Estado FROM Productos "></asp:SqlDataSource>
        <br />
        <p>
        
            &nbsp;</p>
    </form>
</body>
</html>
