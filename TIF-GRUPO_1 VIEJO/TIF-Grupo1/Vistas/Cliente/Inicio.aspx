<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página</title>
    <link rel="stylesheet" type="text/css" href="/Estilos/estilos.css"/>
</head>
<body class="bodyBlanco">
     <form id="form1" runat="server" class="formInicio">
    <ul>
        <li><button>Inicio</button></li>
        <li><button>Productos</button></li>
        <li><button>Pedidos</button></li>
        <li><button>Reservas</button></li>
    </ul>
    <asp:Label ID="lblNombreApellidoUsuario" runat="server" Text="Ariel Tapia"></asp:Label>
    <ul>
     <li><button>Editar Datos</button></li>
     <li><button>Cerrar Sesion</button></li>
    </ul>
    <asp:Label ID="Label1" runat="server" CssClass="labelPrincipal" Text="Bienvenido a Starttap"></asp:Label>
    <p>Explora nuestros productos y realiza tus pedidos y reservas.</p>
    </form>
</body>
</html>
