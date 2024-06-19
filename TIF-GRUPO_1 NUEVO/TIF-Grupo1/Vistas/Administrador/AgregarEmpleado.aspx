<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarEmpleado.aspx.cs" Inherits="Vistas.AgregarEmpleado" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agregar Empleado</title>
    <style type="text/css">
        .bodyLogoColor {
            font-family: Arial, sans-serif;
            background-image: url("/Imagenes/imagen01.jpeg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }
        .bodyBlanco {
            font-family: Arial, sans-serif;
            background-image: url("/Imagenes/imagen02.jpeg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }

        form {
            width: 300px;
            margin: 100px auto;
            padding-top: 50px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .formInicio {
            width: 700px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }

        .labelPrincipal {
            font-family: Arial, sans-serif;
            font-size: 30px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
            display: block;
            width: 100%;
            text-align: center;
        }

        input[type="password"], input[type="email"], select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .BotonPrincipal {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 25px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            cursor: pointer;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            display: block;
            width: 100%;
            text-align: center;
        }

        .BotonPrincipal:hover {
            background-color: white;
            color: black;
        }

        .hyperlink {
            display: block;
            width: 100%;
            text-align: center;
        }

        .hyperlinkParaListadoDeFunciones {
            display: block;
            width: 100%;
            text-align: left;
            padding: 20px;
        }

        .gridViewPrincipal {
            display: flex;
            justify-content: center; /* Centra horizontalmente */
            align-items: center; /* Centra verticalmente si es necesario */
            width: auto; /* Ancho automático */
        }

        .lblMensajeUsuario{
        font-family: Arial, sans-serif;
        font-size: 16px;
        color: #555;
        background-color: #f8f9fa;
        border: 1px solid #ddd;
        margin-top: 10px;
        text-align: center;
        font-weight: bold;
        }
        
    </style>
</head>
<body class="bodyBlanco">
    <form id="form1" runat="server" class="formInicio">
        <div>
            STARTAP<br />
            BREWING CO.<br />
            <br />
        </div>
        <br />
        <asp:Label ID="lblAgregarNuevoEmpleado" runat="server" Text="AGREGAR UN NUEVO EMPLEADO" CssClass="labelPrincipal"></asp:Label>
        <br />
        <br />
        <div class="auto-style2">
            Ingrese numero de DNI del Empleado:
            <asp:TextBox ID="txtDNI" runat="server" Width="83px" AutoPostBack="True" CssClass="auto-style1" Height="16px" OnTextChanged="txtDNI_TextChanged" TextMode="Search"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAgregardniEmpleado" runat="server" ControlToValidate="txtDNI" ErrorMessage="*Debe Agregar DNI">*Debe Agregar DNI</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblMensajeUsuario" runat="server" CssClass="lblMensajeUsuario"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <asp:HyperLink ID="hlRegistrar" runat="server" NavigateUrl="~/Login y Registro/FormularioRegistro.aspx" Visible="False">Ir a Pagina de Registro</asp:HyperLink>
        </div>
        <br />
        <asp:Panel ID="pnlAgregarEmpleado" runat="server" Visible="False">
            <asp:Label ID="lblRolEmpleado" runat="server" Text="Rol"></asp:Label>
            <asp:DropDownList ID="ddlRol" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvSeleccionRol" runat="server" ControlToValidate="ddlRol" InitialValue="" ErrorMessage="*Debe Seleccionar un Rol de empleado.">*Debe Seleccionar un Rol de empleado.</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblSalarioEmpleado" runat="server" Text="Salario"></asp:Label>
            <asp:TextBox ID="txtSalario" runat="server" CssClass="auto-style1" Height="16px" Width="83px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSalario" runat="server" ControlToValidate="txtSalario" ErrorMessage="*Debe Colocar un Salario Inicial.">*Debe Colocar un Salario Inicial.</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lbFechaIngreso" runat="server" Text="Fecha de Ingreso"></asp:Label>
            <asp:TextBox ID="txtFechaIngreso" runat="server" CssClass="auto-style1" Height="16px" TextMode="Date" Width="83px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFechaIngreso" runat="server" ControlToValidate="txtFechaIngreso" ErrorMessage="*Debe Seleccionar una fecha">*Debe Seleccionar una fecha</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lbHorarios" runat="server" Text="Horarios"></asp:Label>
            <asp:DropDownList ID="ddlHorarios" runat="server">
                <asp:ListItem Value="20 a 2">20 a 2</asp:ListItem>
                <asp:ListItem Value="14 a 20">14 a 20</asp:ListItem>
                <asp:ListItem Value="8 a 14">8 a 14</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvHorarios" runat="server" ControlToValidate="ddlHorarios" InitialValue="" ErrorMessage="*Debe Seleccionar un rango horario.">*Debe Seleccionar un rango horario.</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lbEstado" runat="server" Text="Estado Inicial"></asp:Label>
            <asp:CheckBox ID="chbEstadoInicial" runat="server" />
            <br />
            <asp:Button ID="btnAgregarEmpleado" runat="server" OnClick="btnAgregarProd_Click" Text="Agregar Empleado" CssClass="BotonPrincipal"/>
            <br />
            <asp:Label ID="lblMensaje1" runat="server"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>