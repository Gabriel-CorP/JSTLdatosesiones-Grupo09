<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<c:set var="pageId" value="Index" />
<c:set var="standalone" value="not" />
<%@ include file="seguridad.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guia 55ab Grupo 09</title>
        <c:if test="${sessionScope.nivel eq 1}">
        <script>
            function insertar() {
                alert("A continuación debe ingresar los datos del libro.");
                var isbn = prompt("Ingrese el isbn: ");
                var titulo = prompt("Ingrese el titulo");
                var autor = prompt("Ingrese el autor: ");
                var xautor = parseInt(Math.random() * (100 - 18) + 18);
                location.href = "Insert.jsp?isbn=" + isbn + "&titulo=" + titulo + "&autor=" + autor + "&xautor=" + xautor;
            }

        </script>
        </c:if>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <h1 style="text-align:center">Guia 55ab 
            <span style="color:blue;">Grupo de trabajo 09</span>
        </h1>
        <center>
        <table border="1" bordercolor="black" cellspacing="0">
            <tr>
              <td>Carnet</td> <td>Apellidos </td> <td>Nombres </td>
            </tr>
            <tr>
              <td>AC16082</td> <td>Argueta Cortéz</td> <td>Mario Enrique</td>
            </tr>
            <tr>
              <td>BH16004</td> <td>Barrios Hernandez</td> <td>Bryan Giovanni</td>
            </tr>
            <tr>
              <td>CH17013</td> <td>Castro Henríquez</td> <td>Maira Yesenia</td>
            </tr>
            <tr>
              <td>CP17005</td> <td>Corena Pérez</td> <td>Gabriel Isaí</td>
            </tr>
            <tr>
              <td>HC15005</td> <td>Henríquez Cruz</td> <td>Félix Eduardo</td>
            </tr>
            <tr>
              <td>MV18058</td> <td>Miranda Vásquez</td> <td>Paola Alejandra</td>
            </tr>
            <tr>
              <td>OH18003</td> <td>Oliva Hernández</td> <td>Roberto Alejandro</td>
            </tr>
        </table>
        </center>
        <h2>Operaciones:</h2>
        <ul>
            <li>
                <a href="consultar.jsp">Mostrar Listado Actual

                </a>                    
                <c:if test="${sessionScope.nivel eq 2}">(puede ACTUALIZAR y ELIMINAR)</c:if>
                <c:if test="${sessionScope.nivel eq 3}">(puede ELIMINAR)</c:if>
                </li>
            <c:if test="${sessionScope.nivel eq 1}">
                <li>
                    <a href="javascript:insertar();">Agregar y mostrar Listado Actualizado</a>
                </li>
            </c:if>
        </ul>
                <br><h2>OPCIONES PARA PROBAR</h2>
                <P>Como usuario anonimo puede consultar nada más, pero existen los niveles 0-solo consulta, 
                    1-agrega, 2-actualiza y borra, por lo que si quiere agregar, actualizar o borrar tiene dos opciones:
                <br><ol>
                    <li>Dar click a login en esta pagina index y luego ingresar uno de los siguientes usuarios<br>
                Digitador (inserta nada más), Mantenimient (actualiza y elimina) <br>
                para todos la clave es: <b style="color:blue;">12345</b>
                <br></li><li>
                Sin necesidar de ingresar usuario y clave puede dar click a los vinculos siguientes, y se cargará
                de manera automática el usuario del tipo respectivo.</P>
        <a href="nivel.jsp?n=1">User nivel 1(insertar)</a>---<a href="nivel.jsp?n=2">User nivel 2(actualizar y eliminar)</a>---
        <a href="nivel.jsp?n=0">User nivel 0(listar/consultar)</a>---
                    </li></ol>
    </body>
</html>
