<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudesPedidos.aspx.cs" Inherits="Vistas.Empleado.SolicitudesPedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="STARTAP BREWING CO."></asp:Label>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="TABLA SOLICITUDES DE RESERVAS"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvTablaSolicitudesPedidos" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="IdPedido"></asp:TemplateField>
                    <asp:TemplateField HeaderText="IdCliente"></asp:TemplateField>
                    <asp:TemplateField HeaderText="IdEmpleado"></asp:TemplateField>
                    <asp:TemplateField HeaderText="IdMesa"></asp:TemplateField>
                    <asp:TemplateField HeaderText="TipoOrden"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha y hora"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Total"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:CheckBox ID="ckboxEstadoPedido" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
