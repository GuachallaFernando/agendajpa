<%@page import="com.emergentes.agendajpa.Contacto"%>
<%
    Contacto contacto = (Contacto) request.getAttribute("contacto");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script>
        function validarFormulario() {
            var nombre = document.getElementById("nombre").value;
            var telefono = document.getElementById("telefono").value;
            var correo = document.getElementById("correo").value;

            if (nombre.trim() === '' || telefono.trim() === '' || correo.trim() === '') {
                alert("Todos los campos son obligatorios");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <h1>Registro de Contactos</h1>
    <form action="MainController" method="post" onsubmit="return validarFormulario()">
        <input type="hidden" name="id" value="<%= contacto.getId()%>">
        <table>
            <tr>
                <td><label for="nombre">Nombre:</label></td>
                <td><input type="text" id="nombre" name="nombre" value="<%= contacto.getNombre()%>"></td>
            </tr>

            <tr>
                <td><label for="telefono">Teléfono:</label></td>
                <td><input type="text" id="telefono" name="telefono" value="<%= contacto.getTelefono() %>"></td>
            </tr>

            <tr>
                <td><label for="correo">Correo:</label></td>
                <td><input type="text" id="correo" name="correo" value="<%= contacto.getCorreo()%>"></td> 
            </tr>

            <tr>
                <td></td>
                <td><input type="submit"></td> 
            </tr>
        </table>
    </form>
</body>
</html>