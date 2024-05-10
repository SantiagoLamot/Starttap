<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO1.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>BDSUCURSALES</title>
    <style>
         body {
         text-align: center; 
        }
        .hipervinculo {
            color: blue;
            display: inline-block;
            margin-right: 5cm;
            text-align: center;
        }
        .button {
          background-color: #4CAF50;    
          color: white;     
          padding: 10px 20px;   
          margin: 8px 0;    
          border: none;     
          border-radius: 4px;   
          cursor: pointer;  
          font-size: 16px;  
        }        
        button:hover {
          background-color: #45a049;
        }    
        button:focus {
          outline: none;
          box-shadow: 0 0 0 3px rgba(70, 160, 73, 0.6);
        }
        .hipervinculo:last-child {
            margin-right: 0;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style13 {
            width: 266px;
        }
        .auto-style2 {
            height: 23px;
            width: 37px;
        }
        .auto-style15 {
            height: 23px;
            width: 266px;
        }
        .auto-style16 {
            width: 37px;
        }
        .auto-style17 {
            width: 37px;
            height: 34px;
        }
        .auto-style20 {
            width: 266px;
            height: 34px;
        }
        .auto-style22 {
            width: 246px;
            height: 34px;
            text-align: right;
        }
        .auto-style30 {
            height: 23px;
            width: 246px;
            text-align: right;
        }
        .auto-style31 {
            width: 246px;
            text-align: right;
        }
        .auto-style34 {
            margin-left: 4px;
        }
        .auto-style38 {
            width: 37px;
            height: 33px;
        }
        .auto-style39 {
            width: 246px;
            height: 33px;
            text-align: right;
        }
        .auto-style40 {
            width: 173px;
            height: 33px;
            text-align: right;
        }
        .auto-style41 {
            width: 266px;
            height: 33px;
        }
        .auto-style42 {
            text-align: center;
        }
        .auto-style43 {
            width: 37px;
            height: 83px;
        }
        .auto-style44 {
            width: 246px;
            height: 83px;
            text-align: right;
        }
        .auto-style46 {
            width: 266px;
            height: 83px;
        }
        .auto-style47 {
            width: 173px;
            height: 34px;
            text-align: right;
        }
        .auto-style48 {
            width: 173px;
            text-align: right;
        }
        .auto-style49 {
            text-align: center;
            width: 173px;
        }
        .auto-style50 {
            height: 23px;
            width: 173px;
        }
        .auto-style51 {
            width: 173px;
        }
        .auto-style52 {
            width: 173px;
            height: 83px;
        }
        .auto-style54 {
            width: 134px;
            height: 83px;
            text-align: left;
        }
        .auto-style55 {
            width: 134px;
            height: 34px;
            text-align: left;
        }
        .auto-style56 {
            width: 134px;
            height: 33px;
            text-align: left;
        }
        .auto-style57 {
            text-align: left;
            width: 134px;
        }
        .auto-style58 {
            height: 23px;
            width: 134px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="lkAgregarSucursal" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Agregar Sucursal" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="lkListado" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Listar Sucursales" NavigateUrl="~/ListadodeSucursales.aspx">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="lkELiminar" runat="server" CssClass="hipervinculo" ToolTip="Click para ir a Pagina Eliminar Sucursal" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style30"></td>
                <td class="auto-style50"></td>
                <td class="auto-style58"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td colspan="2" class="auto-style42"><strong>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Grupo 1"></asp:Label>
                    </strong></td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td colspan="2" class="auto-style42"><strong>
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Agregar sucursal"></asp:Label>
                    </strong></td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style22">Nombre de sucursal:</td>
                <td class="auto-style47">
                    <asp:TextBox ID="tbNombreSucursal" runat="server" Width="160px" ValidationGroup="GPV"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="tbNombreSucursal" ErrorMessage="Ingrese nombre de sucursal" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revNombSucursal" runat="server" ControlToValidate="tbNombreSucursal" ErrorMessage="El nombre no debe contener numeros" ValidationExpression="^[A-Za-z\s]+$" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style22">Descripcion:</td>
                <td class="auto-style47">
                    <asp:TextBox ID="tbDescripcion" runat="server" Width="160px" ValidationGroup="GPV" ToolTip="Que Actividades realiza en la sucursal, o servicios que brinda."></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="tbDescripcion" ErrorMessage="Ingrese descripcion" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="tbDescripcion" ErrorMessage="La descripción no debe contener numeros" ValidationExpression="^[A-Za-z\s]+$" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style22">Provincia:</td>
                <td class="auto-style47">
                    <asp:DropDownList ID="ddlProvincia" runat="server" Width="167px" Height="41px" ValidationGroup="GPV" CssClass="auto-style34">
                        <asp:ListItem Value="-1">Selecciona una provincia</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" InitialValue="-1" ErrorMessage="Seleccione una provincia" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style39">Direccion:</td>
                <td class="auto-style40">
                    <asp:TextBox ID="tbDireccion" runat="server" Width="160px" ValidationGroup="GPV"></asp:TextBox>
                </td>
                <td class="auto-style56">
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="tbDireccion" ErrorMessage="Ingrese una direccion" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDirección" runat="server" ControlToValidate="tbDireccion" ErrorMessage="La Dirección no debe contener numeros" ValidationExpression="^[A-Za-z0-9\s]+$" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style41"></td>
                <td class="auto-style41"></td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style22">Horario: </td>
                <td class="auto-style47">
                    <asp:DropDownList ID="ddlHorario" runat="server" ClientIDMode="AutoID" Width="167px" Height="41px" ValidationGroup="GPV">
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="rfvHorario" runat="server" ControlToValidate="ddlHorario" InitialValue="-1" ErrorMessage="Seleccione un horario" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style44"></td>
                <td class="auto-style52">
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" ValidationGroup="GPV"/>
                </td>
                <td class="auto-style54">
                    <asp:ValidationSummary ID="Summary1" runat="server" Font-Italic="True" Font-Overline="False" Font-Size="X-Small" ForeColor="#CC0000" ValidationGroup="GPV" Width="130px" DisplayMode="List" Height="47px" />
                    </td>
                <td class="auto-style46"></td>
                <td class="auto-style46"></td>
                <td class="auto-style46"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style42">
                    &nbsp;</td>
                <td class="auto-style49">
                    <asp:Label ID="lblAgregadoExitoso" runat="server"></asp:Label>
                </td>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
