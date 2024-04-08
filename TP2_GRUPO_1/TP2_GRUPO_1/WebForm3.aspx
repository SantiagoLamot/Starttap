<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="TP2_GRUPO_1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="margin: 40px">
    <form id="form1" runat="server">
    <div style="margin-bottom: 10px;">
        <asp:LinkButton ID="LinkButtonRojo" runat="server" OnClick="LinkButtonRojo_Click" Style="background-color: red; color: white; padding: 5px 10px; ">Rojo</asp:LinkButton>
    </div>

    <div style="margin-bottom: 10px;">
        <asp:LinkButton ID="LinkButtonAzul" runat="server" OnClick="LinkButtonAzul_Click" Style="background-color: blue; color: white; padding: 5px 10px; ">Azul</asp:LinkButton>
    </div>

    <div style="margin-bottom: 10px;">
        <asp:LinkButton ID="LinkButtonVerde" runat="server" OnClick="LinkButtonVerde_Click" Style="background-color: green; color: white; padding: 5px 10px;">Verde</asp:LinkButton>
    </div>

    <div style="padding-top: 40px">
        <asp:Label ID="lTexto" runat="server" Text="Label" Style="font-size: 20px; font-weight: bold">Este es el texto coloreado</asp:Label>
    </div>
</form>
</body>
</html>
