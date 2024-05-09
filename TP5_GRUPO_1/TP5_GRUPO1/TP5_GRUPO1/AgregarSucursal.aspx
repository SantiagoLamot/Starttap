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
        .hipervinculo:last-child {
            margin-right: 0;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style13 {
            width: 266px;
        }
        .auto-style9 {
            height: 26px;
            width: 37px;
        }
        .auto-style14 {
            height: 26px;
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
            height: 28px;
        }
        .auto-style20 {
            width: 266px;
            height: 28px;
        }
        .auto-style21 {
            width: 131px;
        }
        .auto-style22 {
            width: 131px;
            height: 28px;
        }
        .auto-style23 {
            height: 26px;
            width: 131px;
        }
        .auto-style24 {
            height: 23px;
            width: 131px;
        }
        .auto-style26 {
            height: 28px;
            width: 243px;
        }
        .auto-style27 {
            height: 26px;
            width: 243px;
        }
        .auto-style28 {
            height: 23px;
            width: 243px;
        }
        .auto-style29 {
            width: 243px;
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
                <td class="auto-style24"></td>
                <td class="auto-style28"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td colspan="2"><strong>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Grupo 1"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td colspan="2"><strong>
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Agregar sucursal"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style22">Nombre de sucursal:</td>
                <td class="auto-style26">
                    <asp:TextBox ID="tbNombreSucursal" runat="server" Width="160px" ValidationGroup="GPV"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="tbNombreSucursal" ErrorMessage="Ingrese nombre de sucursal" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revNombSucursal" runat="server" ControlToValidate="tbNombreSucursal" ErrorMessage="El nombre no debe contener numeros" ValidationExpression="^[A-Za-z\s]+$" ValidationGroup="GPV">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style21">Descripcion:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="tbDescripcion" runat="server" Width="160px" ValidationGroup="GPV" ToolTip="Que Actividades realiza en la sucursal, o servicios que brinda."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="tbDescripcion" ErrorMessage="Ingrese descripcion" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDescripcion" runat="server" ControlToValidate="tbDescripcion" ErrorMessage="La descripción no debe contener numeros" ValidationExpression="^[A-Za-z\s]+$" ValidationGroup="GPV">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style23">Provincia:</td>
                <td class="auto-style27">
                    <asp:DropDownList ID="ddlProvincia" runat="server" Width="168px" Height="20px" ValidationGroup="GPV">
                        <asp:ListItem Value="-1">Selecciona una provincia</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" InitialValue="-1" ErrorMessage="Seleccione una provincia" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style24">Direccion:</td>
                <td class="auto-style28">
                    <asp:TextBox ID="tbDireccion" runat="server" Width="160px" ValidationGroup="GPV"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="tbDireccion" ErrorMessage="Ingrese una direccion" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDirección" runat="server" ControlToValidate="tbDireccion" ErrorMessage="La Dirección no debe contener numeros" ValidationExpression="^[A-Za-z0-9\s]+$" ValidationGroup="GPV">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style24">Horario: </td>
                <td class="auto-style28">
                    <asp:DropDownList ID="ddlHorario" runat="server" ClientIDMode="AutoID" Width="170px" Height="21px" ValidationGroup="GPV">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvHorario" runat="server" ControlToValidate="ddlHorario" InitialValue="-1" ErrorMessage="Seleccione un horario" ForeColor="#CC0000" ValidationGroup="GPV">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" ValidationGroup="GPV" />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td colspan="2">
                    <asp:ValidationSummary ID="Summary1" runat="server" Font-Italic="True" Font-Overline="False" Font-Size="X-Small" ForeColor="#CC0000" ValidationGroup="GPV" Width="153px" DisplayMode="List" Height="47px" />
                    <asp:Label ID="lblAgregadoExitoso" runat="server"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
