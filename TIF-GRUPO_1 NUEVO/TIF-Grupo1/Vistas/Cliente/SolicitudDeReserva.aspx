<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudDeReserva.aspx.cs" Inherits="Vistas.Cliente.SolicitudDeReserva" %>
<%@ Register Src="~/Menu.ascx" TagName="Menu" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estilos.css"/>
</head>
<body class="bodyBlanco">
     <uc:Menu runat="server" />
    <form id="form1" runat="server">
        <main> 
        </main>
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblMesaDeseaReservar" runat="server" Text="SELECCIONE LA MESA QUE DESEA RESERVAR O MIRA EL ESTADO DE TUS " Font-Bold="True"></asp:Label>
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cliente/EstadoReserva.aspx">RESERVAS</asp:HyperLink>
            <br />
            <asp:DataList ID="dlMesas" runat="server" CellPadding="4" ForeColor="#333333" OnItemCommand="dlMesas_ItemCommand">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <ItemTemplate>
                    Mesa N°
                    <asp:Label ID="lblNumeroMesa" runat="server" Text='<%# Bind("Numero") %>'></asp:Label>
                    &nbsp;
                    <asp:Button ID="btnReservar" runat="server" Text="Reservar" CommandArgument='<%# Eval("IdMesa") %>' CommandName="btnReservar" />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataList>
            <br />
            <asp:Label ID="lblElijaFecha0" runat="server" Text="Ingrese cantidad de comensales: "></asp:Label>
            <br />
            <asp:TextBox ID="tbComensales" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbComensales" ErrorMessage="Debe ingresar una cantidad de comensales" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbComensales" ErrorMessage="Los comensales deben ser mayor o igual a 1" ForeColor="#FF3300" Operator="GreaterThan" ValueToCompare="0">*</asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="lblElijaFecha" runat="server" Text="Pulse aqui para elegir una fecha: "></asp:Label>
&nbsp;<asp:TextBox ID="tbFecha" runat="server" Height="16px" AutoPostBack="True" OnTextChanged="tbFecha_TextChanged" TextMode="DateTimeLocal"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbFecha" ErrorMessage="Seleccione una fecha" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
