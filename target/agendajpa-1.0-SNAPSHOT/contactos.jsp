<%@page import="java.util.List"%>
<%@page import="com.emergentes.agendajpa.Contacto"%>
<%
    List<Contacto> lista = (List<Contacto>) request.getAttribute("contactos");
%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
    </head>
    <body>
        <h1>Listado de Contactos</h1>
        <p style="background-color: yellow; font-weight: bold;">Nombre=Abel Fernando Guachalla Fernandez ci=10076417</p>

        
        <a href="MainController?action=add">Nuevo</a>
      
        <table border="1">
            <tr>
                <th>Id</th>    
                <th>Nombre</th>   
                <th>Correo</th>   
                <th>Telefono</th>   
                <th></th>   
                <th></th>   
            </tr>  
            
            <%
                for (Contacto item : lista){             
            %> 
            
            <tr>
                <td><%= item.getId() %></td>    
                <td><%= item.getNombre()%></td>   
                <td><%= item.getCorreo()%></td>   
                <td><%= item.getTelefono()%></td>   
                <td><a href="MainController?action=edit&id=<%= item.getId() %>">Editar</a></td>   
                <td><a href="MainController?action=dele&id=<%= item.getId() %>" onclick="return(confirm('Estas Seguro?'))">Eliminar</a></td>   
            </tr> 
            <%
            }
            %>

        </table>
    </body>
</html>