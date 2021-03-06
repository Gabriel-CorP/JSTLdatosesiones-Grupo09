<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP error de contexto</title>
    </head>
    <body>
        <h1>
            <c:choose>
                <c:when test="${param.tipo eq 'contexto'}">
                    Error, intento de ejecutar una jsp, la cual debe estar en un contexto dentro de otra jsp
                </c:when>
                <c:when test="${param.tipo eq 'insert'}">
                    Error, intento de ejecutar la jsp insertar, sin proporcionar los parametros necesarios
                </c:when>     
                <c:when test="${param.tipo eq 'delete'}">
                    Error, intento de eleiminar un libro, sin proporcionar los parametros necesarios
                </c:when>
                <c:when test="${param.tipo eq 'frmupdate'}">
                    Error, intento de actualizar un libro, sin proporcionar los parametros necesarios
                </c:when> 
            </c:choose>
  
        </h1>
                  <script>
                setTimeout(function () {
                    location.href = "${param.destino}";
                }, 5000);
            </script>
    </body>
</html>
