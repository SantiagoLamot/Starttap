<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservaMesasCliente.aspx.cs" Inherits="Vistas.Cliente.ReservaMesasCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblMesaDeseaReservar" runat="server" Text="SELECCIONE LA MESA QUE DESEA RESERVAR"></asp:Label>
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server">
            </asp:ListView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="lblElijaFecha" runat="server" Text="Pulse aqui para elegir una fecha: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblElijaHora" runat="server" Text="Pulse aqui para elegir un horario:  "></asp:Label>
            <asp:TextBox ID="txtHorarioReserva" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
