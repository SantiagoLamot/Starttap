<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio5.aspx.cs" Inherits="Tp2Programacion.ejercicio5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EJERCICIO 5</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <fieldset style="align-content:center; border: none; padding: 20px; border-radius: 5px; background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
            <legend style="font-weight: bold; padding: 0 10px;">Ejercicios</legend>
            <asp:Button ID="btn1" runat="server" Text="1" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn1_Click" />
            <asp:Button ID="btn2" runat="server" Text="2" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn2_Click" />
            <asp:Button ID="btn3" runat="server" Text="3" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn3_Click" />
            <asp:Button ID="btn4" runat="server" Text="4" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn4_Click" />
               
            </fieldset>

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
