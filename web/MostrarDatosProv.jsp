<%-- 
    Document   : MostrarDatosProv
    Created on : 19/10/2016, 02:57:56 AM
    Author     : santiago
--%>
<%@page import="Logica.Dt_prov"%>
<%@page import="Logica.Sistema"%>
<%@page import="java.util.HashMap"%>
<%@page import="Logica.Dt_promo"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String nickname=(String)request.getSession().getAttribute("nickname");
    String nombre=(String)request.getSession().getAttribute("nombre");
    String apellido=(String)request.getSession().getAttribute("apellido");
    String email=(String)request.getSession().getAttribute("email");
    String nom_emp=(String)request.getSession().getAttribute("nom_emp");
    String link=(String)request.getSession().getAttribute("link");
    boolean hayimagen=(Boolean)request.getSession().getAttribute("hayimagen");
    String urlimagen=(String)request.getSession().getAttribute("urlimagen");
    
%>


<!DOCTYPE html>
<html>
    <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
            <meta name="description" content="">
            <meta name="author" content="">
            <link rel="icon" href="../../favicon.ico">
            <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
            <link href="jumbotron.css" rel="stylesheet">
            <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Help 4 Travelling</title>
            <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">	
            <link rel="icon" type="image/png" href="Airline-Mode-icon.png"/>
            <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
            <script src="bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
            <style>
                .nav-tabs{
                      background-color:#161616;
                    }
                    .tab-content{
                        background-color:#303136;
                        color:#fff;
                        padding:5px
                    }

                    .nav-tabs > li > a{
                      border: medium none;
                    }
                    .nav-tabs > li > a:hover{
                      background-color: #303136 !important;
                        border: medium none;
                        border-radius: 0;
                        color:#fff;
                    }
            </style>
        </head>
<body background="business-travel.jpg">

<nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Login dropdown</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">Inicio</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reserva <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Agregar Servicio</a></li>
            <li class="divider"></li>
            <li><a href="#">Agregar Promocion</a></li>
            <li class="divider"></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Proveedor<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a class="active" href="${pageContext.request.contextPath}/VerInfoProvServlet">Ver Informacion Proveedor</a></li>
            <li class="divider"></li>
            <li><a href="#">Another action</a></li>
            <li class="divider"></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <p>
            <a href="#" class="btn btn-success primary"><!--btn-lg-->
              <span class="glyphicon glyphicon-shopping-cart"></span> Carrito
            </a>
        </p>
        <li><a href="#">Log in</a></li>
        <li><a href="#">Sign up</a></li>
      </ul>
    </div>
  </div>
</nav>
        <div style="background:transparent !important" class="jumbotron">
            <h1>Info Proveedor</h1>
            <p>Aqui se puede ver .</p>
        </div>
        <div class="container">
            <%if(hayimagen){%>
                <img src="<%=urlimagen%>">
            <%}%>
            <br><br>
            <h2><%=nickname%></h2>
            <h2><%=nombre%></h2>
            <h2><%=apellido%></h2>
            <h2><%=email%></h2>
            <h2><%=nom_emp%></h2>
            <h2><%=link%></h2>

            <br><br>
            <form id="form3" name="form3" method="post" action="hola">
                <select name="servicio2" style="color:#000000">
                    <c:forEach items="${servicios}" var="ser">
                        <option value="${ser.key}">${ser.value}</option>
                    </c:forEach>		
                </select>
                <br><br>
                <input type="submit" value="Ver Informacion Servicio"style="color:#000000">	
            </form>
        </div>

</body>
</html>
