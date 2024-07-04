<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaEmpleados.aspx.cs" Inherits="Vistas.Administrador.TablaEmpleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        /* Agrega los estilos CSS aquí */
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
        .auto-style1 {
            font-family: Arial, sans-serif;
            font-size: 30px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
            display: block;
            text-align: center;
        }
    </style>
</head>
<body class="bodyLogoColor">
    <form id="form1" runat="server" class="formInicio">
        <div>
            <asp:Label ID="lblNombreUsuario" runat="server" CssClass="nombre-usuario"></asp:Label>
            <asp:Label ID="lblTitulo" runat="server" CssClass="auto-style1" Text="STARTAP BREWING CO." Height="60px" Width="713px"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblTabladeEmpleados" runat="server" Font-Size="Medium" Text="TABLA DE EMPLEADOS"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvEmpleados" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="gridViewPrincipal" OnPageIndexChanging="gvEmpleados_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="Empleado" HeaderText="Empleado" />
                    <asp:TemplateField HeaderText="DNI">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rol">
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Rol") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salario">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Salario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha de ingreso">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("FechaIngreso") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Horarios">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Horarios") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:Label ID="lblEstado" runat="server" Text='<%# Convert.ToBoolean(Eval("Estado")) ? "Disponible" : "No Disponible" %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administrador/DatosLaboralesEmpleados.aspx">Ir a Modificar Estado/Salario</asp:HyperLink>
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlRedirigir" runat="server" NavigateUrl="~/Administrador/VerTablas.aspx" OnDataBinding="HyperLink1_DataBinding">Ir a pagina de inicio</asp:HyperLink>
        </div>
    </form>
</body>
</html>
