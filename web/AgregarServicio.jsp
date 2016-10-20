<%-- 
    Document   : index
    Created on : 27/09/2016, 05:44:33 PM
    Author     : santiago
--%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    //HashMap<String,String> servicios=(HashMap<String,String>)request.getSession().getAttribute("servicios");
%>
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
            <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <script src="bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
            <script type="text/javascript">
                $(function() {
                    $('input[name="birthdate"]').daterangepicker({
                        singleDatePicker: true,
                        showDropdowns: true
                    }, 
                    function(start, end, label) {
                        var years = moment().diff(start, 'years');
                        alert("You are " + years + " years old.");
                    });
                });
            </script>
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
            <li><a class="active" href="#">Agregar Servicio</a></li>
            <li class="divider"></li>
            <li><a href="#">Agregar Promocion</a></li>
            <li class="divider"></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Proveedor<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath}/VerInfoProvServlet">Ver Informacion Proveedor</a></li>
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
            <!--<h1>Bienvenido a Help 4 Traveling</h1>-->
        </div>
        <div class="container">
            <form class="form-horizontal" role="form" name="form3" method="post" action="AgregarServicioServlet">
                <center>
                    <select name="servicio" style="color:#000000">
                                      <c:forEach items="${servicios}" var="ser">
                                          <option value="${ser.key}">${ser.value}</option>
                                      </c:forEach>		
                    </select>
                </center>
                <br><br>
                <div class="form-group">
                  <label class="col-lg-2 control-label"></label>
                  <div class="col-lg-10">
                    <input type="date" class="form-control" name="fechaini"
                           placeholder="Fecha Inicio">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label"></label>
                  <div class="col-lg-10">
                      <input type="date" class="form-control" name="fechafin" placeholder="Fecha Fin">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label"></label>
                  <div class="col-lg-10">
                    <input type="number" class="form-control" name="cantidad" placeholder="Cantidad">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label"></label>
                  <div class="col-lg-10">  
                    <input type="submit" class="form-control" value="Agregar Servicio"style="color:#000000">
                  </div>
                </div>
              </form>
            
        </div>

</body>
</html>
