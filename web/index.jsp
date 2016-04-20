
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="lib/css/appStyles.css" rel="stylesheet" type="text/css"/>
        <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="lib/jquery-ui/jquery-ui.css" rel="stylesheet" type="text/css"/>        
        <script src="lib/jquery/jquery-2.1.3.min.js" type="text/javascript"></script> 
        <script src="lib/bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script src="lib/bootstrap/js/ui-bootstrap-tpls.js" type="text/javascript"></script>
        <script src="lib/jquery-ui/jquery-ui.js" type="text/javascript"></script>

        <c:if test="${css != null}">
                    <link href="${css}" rel="stylesheet" type="text/css"/>
        </c:if>
        <script src="lib/bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <title>Gestion des oeuvres</title>
    </head>
    <body class="body">  
        <c:set var="css" scope="application" value="lib/bootstrap/js/bootstrap.js"/>
        <span class="glyphicon glyphicon-user"></span>
        <button type="submit" class="btn btn-default btn-success" formaction="ajouterUser.oe"></button>
        <button type="submit" class="btn btn-default btn-success" formaction="ajouterUser.oe"><span class="glyphicon glyphicon-user"></span></button>
        <div class="container">
            <c:import url="/menu.jsp"/>
            <c:if test="${erreurR != null}">
                <c:import url="/erreur.jsp"/>
            </c:if>
            <div> 
                <c:set var="url" scope="application" value="/home.jsp"/>
                <c:if test="${pageR != null && sessionScope.userId != null}">
                    <c:set var="url" scope="application" value="${pageR}"/>
                </c:if>
                <c:import url="${url}"/>

            </div>
        </div>
    </body>
</html>
