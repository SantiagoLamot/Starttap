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
            <br />
            <asp:HyperLink ID="hlSeleccionar" runat="server" NavigateUrl="~/ElementosEjercicio2/SeleccionarProductos.aspx">Seleccionar Productos</asp:HyperLink>
            <br />
            <br />
            <asp:LinkButton ID="lbtnDeleteProd" runat="server" >Eliminar Productos Seleccionados</asp:LinkButton>
            <br />
            <br />
            <asp:HyperLink ID="hlMostrar" runat="server" NavigateUrl="~/ElementosEjercicio2/MostrarSeleccionados.aspx">Mostrar Productos</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
