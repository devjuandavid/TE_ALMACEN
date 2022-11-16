<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergente.modelo.Producto"%>
<%
    List<Producto> lista = (List<Producto>) request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center> <h1>Lista de Productos</h1></center>  

        <p>
            <a href="MainController?op=nuevo">Nuevo</a>
        </p>

        <table border="1" bordercolor="black" cellspacing="0">
            <tr>
                <th height="50" width="150"  bgcolor="#16A085">Id</th>
                <th height="50" width="150"  bgcolor="#16A085">Producto</th>
                <th height="50" width="150"  bgcolor="#16A085">Precio</th>
                <th height="50" width="150"  bgcolor="#16A085">Cantidad</th>
                <th height="50" width="150"  bgcolor="#16A085">Modificar</th>
                <th height="50" width="150"  bgcolor="#16A085">Eliminar</th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.producto}</td>
                    <td>${item.precio}</td>
                    <td>${item.cantidad}</td>
                    <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Estas seguro de eliminar'))">Eliminar</a></td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>
