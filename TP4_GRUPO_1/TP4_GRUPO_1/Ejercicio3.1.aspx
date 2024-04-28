<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.1.aspx.cs" Inherits="TP4_GRUPO_1.Ejercicio3__1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblListadoLibros" runat="server" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#CC00FF" Text="Listado de Libros"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvLibros" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:LinkButton ID="lbConsultarTema" runat="server" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#CC00FF" OnClick="LinkButton1_Click">Consultar otro tema</asp:LinkButton>
        </div>
    </form>
</body>
</html>
