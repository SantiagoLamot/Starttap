<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP6_Grupo1.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlVolverInicio" runat="server" NavigateUrl="~/Inicio.aspx">Inicio</asp:HyperLink>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlSeleccionar" runat="server" NavigateUrl="~/ElementosEjercicio2/SeleccionarProductos.aspx" OnDataBinding="Page_Load">Seleccionar Productos</asp:HyperLink>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lbtnDeleteProd" runat="server" OnClick="lbtnDeleteProd_Click" OnClientClick="return confirm('¿Estás seguro de que deseas eliminar los&nbsp;productos?');" >Eliminar Productos Seleccionados</asp:LinkButton>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlMostrar" runat="server" NavigateUrl="~/ElementosEjercicio2/MostrarSeleccionados.aspx">Mostrar Productos</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
