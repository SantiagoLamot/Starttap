<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="TP2_GRUPO_1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EJERCICIO 3</title>
</head>
<body style="margin: 40px">
    <form id="form1" runat="server" style="margin: 10px">
    <div style="margin: 10px">
        <fieldset style="align-content:center; border: none; padding: 20px; border-radius: 5px; background-color: #fff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
            <legend style="font-weight: bold; padding: 0 10px;">Ejercicios</legend>
            <asp:Button ID="btn1" runat="server" Text="1" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn1_Click" />
            <asp:Button ID="btn2" runat="server" Text="2" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn2_Click" />
            <asp:Button ID="btn4" runat="server" Text="4" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn4_Click" />
            <asp:Button ID="btn5" runat="server" Text="5" Style="background-color: #007bff; border: none; color: white; padding: 10px 20px; text-align: center; font-size: 16px; margin: 4px 2px;" OnClick="btn5_Click" />
               
        </fieldset>
    </div>
    <div style="margin-bottom: 20px;">

        <asp:LinkButton ID="LinkButtonRojo" runat="server" OnClick="LinkButtonRojo_Click" Style="background-color: red; color: white; padding: 5px 10px; ">Rojo</asp:LinkButton>
    </div>

    <div style="margin-bottom: 20px;">
        <asp:LinkButton ID="LinkButtonAzul" runat="server" OnClick="LinkButtonAzul_Click" Style="background-color: blue; color: white; padding: 5px 10px; ">Azul</asp:LinkButton>
    </div>

    <div style="margin-bottom: 20px;">
        <asp:LinkButton ID="LinkButtonVerde" runat="server" OnClick="LinkButtonVerde_Click" Style="background-color: green; color: white; padding: 5px 10px;">Verde</asp:LinkButton>
    </div>

    <div style="padding-top: 40px">
        <asp:Label ID="lTexto" runat="server" Text="Label" Style="font-size: 20px; font-weight: bold">Este es el texto coloreado</asp:Label>
    </div>
</form>
</body>
</html>
