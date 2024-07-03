<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPedidos.aspx.cs" Inherits="Vistas.Cliente.Menu" %>
<%@ Register Src="~/Cliente/VistaMenuCliente.ascx" TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <%--<link rel="stylesheet" type="text/css" href="../Estilos/StyleMenu.css"/>--%>

    <style type="text/css">
        .auto-style1 {
            width: 845px;
        }
        .auto-style2 {
            width: 864px;
            height: 683px;
        }
        .header-container {
            text-align: center;
        }
    </style>
</head>

<body class="bodyBlanco">
    <uc:menu runat="server" />
    <form id="form1" runat="server" class="auto-style2">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblNombreUsuario" runat="server" CssClass="nombre-usuario"></asp:Label>
         </div>
            <div class="auto-style9" >
                <br />
                <asp:Label ID="lblMensaje" runat="server" CssClass="auto-style8"></asp:Label>
                <br />
                <asp:DataList ID="DataListBebidas" runat="server" DataSourceID="SqlDataSourceBebidas" RepeatColumns="6" CssClass="menu-datalist" Height="163px" Width="151px" ShowFooter="False" RepeatDirection="Horizontal">
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
