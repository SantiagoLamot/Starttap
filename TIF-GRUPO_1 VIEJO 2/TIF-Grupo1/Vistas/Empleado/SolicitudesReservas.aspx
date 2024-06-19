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
            <asp:GridView ID="gvSolicitudesReservas" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="IdReserva"></asp:TemplateField>
                    <asp:TemplateField HeaderText="IdCliente"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre y apellido"></asp:TemplateField>
                    <asp:TemplateField HeaderText="IdMesa"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Hora"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlEstadoReserva" runat="server">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Label ID="lbl" runat="server" Text="El estado lo podemos hacer con un ddl conectado a una tabla maestra donde esten En espera - Aceptada - Rechazada"></asp:Label>
            <br />
            O sino agregar dos botones, uno de aceptar y otro de rechazar, y hacer la modificacion de estado mediante el evento &quot;Command Name&quot;</div>
    </form>
</body>
</html>
