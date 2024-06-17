<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstadoReserva.aspx.cs" Inherits="Vistas.Cliente.EstadoReserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Estado de Reserva</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .header {
            font-size: 24px;
            font-weight: bold;
        }
        .subheader {
            font-size: 20px;
            margin-top: 10px;
        }
        .status-message {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }
        .details {
            margin-top: 20px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">STARTAP BREWING CO.</div>
            <div class="subheader">Estado de Reserva<br />
                <br />
                    Estado de la Reserva: 
                <asp:Label ID="Label1" runat="server" BackColor="Lime" BorderColor="Lime" BorderStyle="Outset" ForeColor="#006699" Text="&quot;ACEPTADO&quot;"></asp:Label>
                <br />
                <br />
            </div>
        </div>
        Señor/a:
        <asp:Label ID="lblMensaje" runat="server" Text="&quot;Nombre de usuario&quot;"></asp:Label>
        <br />
        Se confirmo su reserva para
        <br />
        Fecha:
        <asp:Label ID="lblFecha" runat="server"></asp:Label>
        <br />
        Hora:
        <asp:Label ID="lblHora" runat="server"></asp:Label>
        <br />
        Mesa N°:
        <asp:Label ID="lblMesa" runat="server"></asp:Label>
        <br />
        <br />
        GRACIAS POR ELEGIRNOS!!</form>
</body>
</html>
