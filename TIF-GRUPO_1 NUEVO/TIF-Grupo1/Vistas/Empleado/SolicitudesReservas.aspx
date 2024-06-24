<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudesReservas.aspx.cs" Inherits="Vistas.Empleado.SolicitudesReservas" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STAR TAP BREWING CO."></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblListadesolicitudes" runat="server" Text="LISTA DE SOLICITUDES DE RESERVAS DE EMPRESA"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvSolicitudesReservas" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvSolicitudesReservas_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Nombre y apellido">
                        <ItemTemplate>
                            <asp:Label ID="lblCliente_IT" runat="server" Text='<%# Bind("Cliente") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mesa">
                        <ItemTemplate>
                            <asp:Label ID="lblNumMesa_IT" runat="server" Text='<%# Bind("NumMesa") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha">
                        <ItemTemplate>
                            <asp:Label ID="lblFecha_IT" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comensales">
                        <ItemTemplate>
                            <asp:Label ID="lblComensales_IT" runat="server" Text='<%# Bind("Comensales") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnAceptar_IT" runat="server" CommandArgument='<%# Eval("IdReserva") %>' CommandName="Click_Aceptar" Text="Aceptar" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnRechazar_IT" runat="server" Text="Rechazar" CommandArgument='<%# Eval("IdReserva") %>' CommandName="Click_Rechazar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
