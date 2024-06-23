<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerEntregadosFacturasMozo.aspx.cs" Inherits="Vistas.Empleado.VerEntregados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
            <br />
            <br />
            Listado de ordenes entregadas y su facturacion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Volver" runat="server" OnClick="btn_Volver_Click" Text="Volver" />
            <br />
            <br />
            <asp:GridView ID="gv_Entregados" runat="server" AllowPaging="True" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gv_Entregados_PageIndexChanging">
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
            <asp:Label ID="Label1" runat="server" Text="Buscar por numero de orden:"></asp:Label>
            <asp:TextBox ID="tb_IdOrden" runat="server" ValidationGroup="GP"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_buscar" runat="server" ControlToValidate="tb_IdOrden" ErrorMessage="Ingrese un valor" ValidationGroup="GP">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_buscar" runat="server" ControlToValidate="tb_IdOrden" ErrorMessage="Ingrese un valor numerico" ValidationExpression="^\d+$" ValidationGroup="GP">*</asp:RegularExpressionValidator>
            <asp:Button ID="btn_Buscar" runat="server" OnClick="btn_Buscar_Click" Text="Buscar" ValidationGroup="GP" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="GP" />
            <br />
            <asp:GridView ID="gv_OrdenEspecifica" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <asp:Button ID="btn_Ocultar" runat="server" OnClick="btn_Ocultar_Click" Text="Ocultar" Visible="False" />
        </div>
    </form>
</body>
</html>
