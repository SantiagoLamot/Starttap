<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CocinaVerPedidos.aspx.cs" Inherits="Vistas.Empleado.CocinaVerPedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_VolverInicioEmpleado" runat="server" OnClick="btn_VolverInicioEmpleado_Click" Text="Volver" />
            <br />
            <br />
            <asp:Label runat="server" Text="Lista de pedidos:"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gv_ListaOrdenes" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gv_ListaOrdenes_PageIndexChanging" OnRowCommand="gv_ListaOrdenes_RowCommand">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Numero de Orden">
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_IdOrden" runat="server" Text='<%# Bind("IdOrden") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField CommandName="eventoVerOrden" Text="VER ORDEN" />
                    <asp:ButtonField ButtonType="Button" CommandName="eventoCocinado" Text="  Listo  " />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            &nbsp;&nbsp;
            <br />
            <asp:Label ID="lbl_MensajeOrden" runat="server" Font-Italic="True" ForeColor="#00CC00"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbl_DetalleOrden" runat="server" Font-Bold="True" Font-Italic="False"></asp:Label>
            <br />
            <asp:GridView ID="gv_Orden" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:Button ID="btn_ContraerGVOrden" runat="server" OnClick="btn_ContraerGVOrden_Click" Text="  Atras  " Visible="False" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
