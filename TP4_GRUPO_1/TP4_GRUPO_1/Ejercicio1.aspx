<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP4_GRUPO_1.Ejercicio1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>✈︎Seleccion de partida y destino✈︎</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f6fc; 
            margin: 0;
            padding: 0;
        }
        
        /* Div principal */
        .divPrincipal {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
     
        /* título */
        h2 {
            color: #007bff; 
            margin-bottom: 20px;
        }
        
        /* label en general */
        label {
            font-weight: bold;
            color: #333;
        }
        
        /* Boton */
        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        
        /* label result.*/
        .Mensaje {
            font-weight: bold;
            
        }
        
        /* DropDownList'ss */
        .DDList {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            color: #555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="divPrincipal">
            <h2 style="text-align:center">✈ Selección de partida y destino ✈</h2>
            <div>
                <label>Provincia:</label>
                <asp:DropDownList ID="ddlProvInicial" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvInicial_SelectedIndexChanged" CssClass="DDList">
                    <asp:ListItem Text="--Seleccione una provincia--" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Localidad:</label>
                <asp:DropDownList ID="ddlLocalInicial" runat="server" CssClass="DDList">
                    <asp:ListItem Text="--Seleccione una localidad--" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Provincia:</label>
                <asp:DropDownList ID="ddlProvFinal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvFinal_SelectedIndexChanged" CssClass="DDList">
                    <asp:ListItem Text="--Seleccione una provincia--" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <label>Localidad:</label>
                <asp:DropDownList ID="ddlLocalFinal" runat="server" CssClass="DDList">
                    <asp:ListItem Text="--Seleccione una localidad--" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" CssClass="btn" />
            </div>
            <div style="margin-top: 20px;">
                <asp:Label class="Mensaje" id="lblMensaje" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
