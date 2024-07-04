<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstadoReserva.aspx.cs" Inherits="Vistas.Cliente.EstadoReserva" %>
<%@ Register Src="~/Cliente/VistaMenuCliente.ascx"TagName="Menu" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Estado de Reserva</title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
    <style>
        datalist {
           font-family: Arial, sans-serif;
           text-align: center;
           margin-top: 50px;
            
            }
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
    <uc:Menu runat="server" />
    <form id="form1" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblNombreUsuario" runat="server" CssClass="nombre-usuario"></asp:Label>
        <div>
            <div class="header">STARTAP BREWING CO.<br />
                <asp:Label ID="Label4" runat="server" Text="Estado de reservas"></asp:Label>
            </div>
            <div class="subheader">&nbsp;<asp:Label ID="Label1" runat="server" BackColor="#00CC99" ForeColor="#006666" Text="ACEPTADAS"></asp:Label>
                <br />
                <asp:DataList ID="dlReservasAceptadas" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        Fecha:
                        <asp:Label ID="lblFEcha_IT" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        <br />
                        Mesa:
                        <asp:Label ID="lblMesa_IT" runat="server" Text='<%# Bind("NumMesa") %>'></asp:Label>
                        <br />
                        Comensales:
                        <asp:Label ID="lblComensales_IT" runat="server" Text='<%# Bind("Comensales") %>'></asp:Label>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
        <br />
        GRACIAS POR ELEGIRNOS!!</div>
            
            <div class="subheader">
                <asp:Label ID="Label2" runat="server" BackColor="#CCCC00" ForeColor="#999966" Text="PENDIENTES"></asp:Label>
                <br />
                <asp:DataList ID="dlReservasPendientes" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        Fecha:
                        <asp:Label ID="lblFEcha_IT" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        <br />
                        Mesa:
                        <asp:Label ID="lblMesa_IT" runat="server" Text='<%# Bind("NumMesa") %>'></asp:Label>
                        <br />
                        Comensales:
                        <asp:Label ID="lblComensales_IT" runat="server" Text='<%# Bind("Comensales") %>'></asp:Label>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <br />
            </div>

            <div class="subheader">&nbsp;<asp:Label ID="Label3" runat="server" BackColor="Red" ForeColor="#993300" Text="RECHAZADAS"></asp:Label>
                <br />
                <asp:DataList ID="dlReservasRechazadas" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        Fecha:
                        <asp:Label ID="lblFEcha_IT" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        <br />
                        Mesa:
                        <asp:Label ID="lblMesa_IT" runat="server" Text='<%# Bind("NumMesa") %>'></asp:Label>
                        <br />
                        Comensales:
                        <asp:Label ID="lblComensales_IT" runat="server" Text='<%# Bind("Comensales") %>'></asp:Label>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <br />
            </div>

        </div>
        </form>
</body>
</html>
