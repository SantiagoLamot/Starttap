<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio5.aspx.cs" Inherits="Tp2Programacion.ejercicio5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Elija su configuracion<br />
            <br />
            seleccione cantidad de memoria:
            <br />
            <asp:DropDownList ID="ddlmemoria" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
                <asp:ListItem Value="200">2 GB</asp:ListItem>
                <asp:ListItem Value="375">4 GB</asp:ListItem>
                <asp:ListItem Value="500">6 GB</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Seleccione accesorios:<br />
            <br />
            <asp:CheckBoxList ID="ChkAccesorios" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="2000,50">Monitor LCD</asp:ListItem>
                <asp:ListItem Value="550,50">HD 500 GB</asp:ListItem>
                <asp:ListItem Value="1200">Grabador DVD </asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="btnTotal" runat="server" OnClick="Button1_Click" Text="Calcular Valor Total" />
            <br />
            <br />
            <br />
            El precio final es de <asp:Label ID="Total" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
