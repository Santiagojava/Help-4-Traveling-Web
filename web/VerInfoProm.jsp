<%-- 
    Document   : VerInfoProm
    Created on : 11/10/2016, 01:00:56 PM
    Author     : santiago
--%>
<%@page import="Logica.Sistema"%>
<%@page import="java.util.HashMap"%>
<%@page import="Logica.Dt_promo"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //String promos[]=(String[])request.getSession().getAttribute("promos");
%>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Help 4 Travelling</title>
            <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">	
            <link rel="icon" type="image/png" href="Airline-Mode-icon.png"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<!-- Centered Tabs -->
                <ul class="nav nav-tabs" id="myTab">
                <li class="active"><a data-toggle="tab" href="#home">HOME</a></li>
                <li><a data-toggle="tab" target="_blank" href="#infoprom">INFO PROMO</a></li>
                <li><a data-toggle="tab" href="#search">SEARCH</a></li>
                </ul>
                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                       <p>golazo</p>
                    </div>
                    <div id="infoprom" class="tab-pane fade">
                        <p>Sorete</p>
                        <%/*<form id="form1" name="form1" method="post" action="login">
                            <select name="promo" id="pais2" style="color:#000000">
                                    <c:forEach items="${promos}" var="promo">
                                        <option value="${promo.key}">${promo.value}</option>
                                    </c:forEach>
                                    <!--<option value="Uruguay" style="color:#000000">Uruguay</option>
                                    <option value="Chile" style="color:#000000">Chile</option>
                                    <option value="Mexico" style="color:#000000">M&eacute;xico</option>
                                    <option value="Brasil" style="color:#000000">Brasil</option>-->		
                            </select>
                            <br><br>
                            <input type="submit" value="Ver Informacion"style="color:#000000">	
                        </form>*/%>
                    </div>
                    <div id="search" class="tab-pane fade">
                        <p>hola</p>
                    </div>
                </div>
                <img src="perfil_01.jpg" alt="Foton de perfil" width=70 height=70 align="right" class="img-circle">
                <center>
                <h1>
			HELP 4 TRAVELLING
	</body>
</html>
