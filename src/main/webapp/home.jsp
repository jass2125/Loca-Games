<%-- 
    Document   : index
    Created on : 23/02/2016, 19:47:54
    Author     : Dijalma Silva <dijalmacz@gmail.com>
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <%@include file="modalCliente.jsp" %>
    <body>
        <%@include file="header.jsp" %>

        <div class="dj-modal__section">
            <div class="dj-titulo__left">
                <c:choose>
                    <c:when test="${sessionScope.success != null}">
                        <div class="alert alert-success">
                            <strong>Sucesso</strong> ${sessionScope.success}
                        </div>

                    </c:when>
                    <c:when test="${sessionScope.error != null && sessionScope.info != null}">
                        <div class="alert alert-danger">
                            <strong>Falha</strong> ${sessionScope.error}
                             ${sessionScope.info}
                        </div>
                        <c:remove scope="session" var="error"></c:remove>
                    </c:when>

                </c:choose>
                <c:if test="${sessionScope.price != null}">
                    <div class="alert alert-info">
                        <strong>Preço do aluguel</strong> ${sessionScope.price}
                    </div>
                    <c:remove scope="session" var="price"></c:remove>
                </c:if>

            </div>
            <br>

            <div class="dj-titulo__left">
                <h2>Funcionalidades do sistema</h2>
            </div>
            <div>
                <div class="modal-header">
                    <h3>Jogos</h3>
                </div>
                <br>
                <ul>
                    <li>
                        <img src="icons/rent.png" class="dj-image__funcionalidade">
                        <a href="front?command=loadGames">Alugar</a>
                    </li>
                    <li>
                        <img src="icons/return.png" class="dj-image__funcionalidade">
                        <a href="devolver.jsp">Devolver</a> 
                    </li>
                    <li>
                        <img src="icons/observer.png" class="dj-image__funcionalidade">
                        <a href="observar.jsp">Observar</a>
                    </li>
                    <li>
                        <img src="  icons/newGame.png" class="dj-image__funcionalidade">
                        <a href="novoJogo.jsp">Novo jogo</a>
                    </li>
                </ul>
            </div>
            <br><br>
            <div>
                <h3>Clientes</h3>
                <br>
                <ul>
                    <li>
                        <img src="icons/rent.png" class="dj-image__funcionalidade">
                        <a href="novoCliente.jsp">Novo Cliente</a>
                    </li>
                </ul>
            </div>

        </div>
        <c:remove scope="session" var="success"></c:remove>
    </body>
</html>
