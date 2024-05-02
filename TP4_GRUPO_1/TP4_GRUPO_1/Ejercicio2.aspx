<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP4_GRUPO_1.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Filtrado de Productos</title>
    <style type="text/css">

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f6fc; 
            margin: 0;
            padding: 0;
        }
        .divPrincipal {
            max-width: 800px;
            margin: 10px auto;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
         h2 {
             color: #007bff; 
             margin-bottom: 20px;
         }
         label {
             font-weight: bold;
             color: #333;
             margin-right: 20px;
         }
        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-right: 20px;
        }
         .DDList {
             width: 50%;
             padding: 4px;
             margin-bottom: 10px;
             border: 1px solid #ccc;
             border-radius: 4px;
             background-color: #fff;
             color: #555;
             Width: 300px;
             margin-right: 20px;
         }
         .txtBox{
            width: 50%;
            padding: 4px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            color: #555;
            Width: 300px;
         }
         .gridview {
           
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            margin-bottom: 5px;
            
         }
         .grid-container {
            margin-left:250px;
            margin-right: 100px;
            text-align: center;
         }

        

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="text-align:center">&nbsp;</h2>
        <h2 style="text-align:center">&nbsp;Filtrado de Productos</h2>
        <div class="divPrincipal">
            <div>
                <label>Id Producto:</label>
               <br />
                <asp:DropDownList ID="ddlProducto" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  CssClass="DDList">
                    <asp:ListItem Value="=">Igual a:</asp:ListItem>
                    <asp:ListItem Value="&gt;">Mayor a:</asp:ListItem>
                    <asp:ListItem Value="&lt;">Menor a:</asp:ListItem>
                 </asp:DropDownList>
                 <asp:TextBox ID="txtIdProd" runat="server"  CssClass="txtBox"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdProd" Display="Dynamic" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Small" ForeColor="#660066" ValidationExpression="(D-)?\d{1,2}">*El id debe ser un numero menor a 100</asp:RegularExpressionValidator>
                <br />
                <br />
            </div>
            <div>
                <label>Id Categoria:</label>
                <br />
                <asp:DropDownList ID="ddlCategoria" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="DDList" Font-Size="Small">
                    <asp:ListItem Value="=">Igual a:</asp:ListItem>
                    <asp:ListItem Value="&gt;">Mayor a:</asp:ListItem>
                    <asp:ListItem Value="&lt;">Menor a:</asp:ListItem>
                </asp:DropDownList>
                        <asp:TextBox ID="txtIdCat" runat="server"  CssClass="txtBox"></asp:TextBox>
                 <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtIdCat" Display="Dynamic" ErrorMessage="RegularExpressionValidator" Font-Bold="True" Font-Size="Small" ForeColor="#660066" ValidationExpression="(D-)?\d{1,2}">*El id debe ser un numero menor a 10</asp:RegularExpressionValidator>
                <br />
                <br />
            </div>
            <div>
                <asp:Button ID="btnFiltro" runat="server" OnClick="Button1_Click" Text="Filtrar" CssClass="btn" />
                <asp:Button ID="QuitarFiltro" runat="server" Text="Quitar Filtro" OnClick="btnQuitarFiltro_Click" CssClass="btn" />
            </div>
          </div >
                <br />
                <h2 style="text-align:center">Tabla de Productos</h2>
                <br />
          <div class="grid-container">
                     <asp:GridView ID="gvProductos" runat="server" CssClass="my-gridview">
                     <AlternatingRowStyle BackColor="#660066" BorderColor="#660066" VerticalAlign="Middle" Wrap="False" />
                         <EditRowStyle BackColor="#660066" BorderStyle="None" />
                         <HeaderStyle BackColor="#000066" ForeColor="White" />
                     </asp:GridView>
           </div>
    </form>
</body>
</html>
