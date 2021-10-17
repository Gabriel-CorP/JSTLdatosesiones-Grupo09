
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CAMBIO AUTOMATICO DE USUARIO SIN LOGEO</title>
    </head>
    <body>
        <h1>CAMBIAR DE USUARIO RAPIDO SIN LOGEO</h1>
        <c:choose >
            <c:when test="${param.n eq 1}">
                <c:set var="user" scope="session" value="Digitador"/>
                <c:set var="nivel" scope="session" value="1"/>
                <c:set var="nombre" scope="session" value="Usuario para inserción"/>
            </c:when>
            <c:when test="${param.n eq 2}">
                <c:set var="user" scope="session" value="Mantenimiento"/>
                <c:set var="nivel" scope="session" value="2"/>
                <c:set var="nombre" scope="session" value="Usuario para actualización o eliminación"/>
            </c:when>            
            
            <c:when test="${param.n eq 0}">
                <c:set var="user" scope="session" value="Anonimo"/>
                <c:set var="nivel" scope="session" value="0"/>
                <c:set var="nombre" scope="session" value="Usuario solo de consulta"/>
            </c:when>
        </c:choose>
        <p style="color:red;">
            <br>Dentro de unos segundos sera redirigido a la pagina de INICIO</p>
        <script>
            setTimeout(function () {
                location.href = "index.jsp";
            }, 5000);
        </script>
    </body>
</html>
