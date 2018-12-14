
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistema Academio</title>

    <!-- Fuentes -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- CSS -->
    <link href="../public/css/gallery-materialize.min.css" rel="stylesheet">

    <!-- JS -->
    <script type="text/javascript" src="../public/js/sweetalert.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

    <!-- Funciones -->
    <jsp:include page="../public/js/eliminartodo.js"></jsp:include>
</head>
<body>

<script type="text/javascript" src="../public/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../public/js/materialize.js"></script>
<script type="text/javascript" src="../public/js/jquery.dataTables.min.js"></script>
<!-- Start Page Loading -->
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>

<nav class="nav-extended light-blue">
    <div class="nav-background">
        <div class="pattern active" style="background-image: url('public/img/banner.png');"></div>
    </div>
    <div class="nav-wrapper container">
        <a href="#" class="brand-logo">Sistema Academico</a>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
            <li class="active"><a href="../index.jsp">Inicio</a></li>
            <li><a href="../views/inteligencia.jsp">Inteligencia</a></li>
            <li><a href="../views/preguntas.jsp">Preguntas</a></li>
            <li><a href="../views/acerca_de.jsp">Acerca de</a></li>
        </ul>
    </div>
</nav>
<ul class="side-nav" id="nav-mobile">
    <li class="active"><a href="../index.jsp">Inicio</a></li>
    <li><a href="views/inteligencia.jsp">Inteligencia</a></li>
    <li><a href="views/preguntas.jsp">Preguntas</a></li>
    <li><a href="../views/acerca_de.jsp">Acerca de</a></li>
</ul>