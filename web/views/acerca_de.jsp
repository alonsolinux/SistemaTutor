<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistema Academio</title>

    <!-- Fuentes -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>

    <!-- CSS -->
    <link href="../public/css/gallery-materialize.min.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>

<nav class="nav-extended light-blue">
    <div class="nav-background">
        <div class="pattern active" style="background-image: url('../public/img/banner.png');"></div>
    </div>
    <div class="nav-wrapper container">
        <a href="#" class="brand-logo">Sistema Academico</a>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul class="right hide-on-med-and-down">
            <li class="active"><a href="../index.jsp">Inicio</a></li>
            <li><a href="inteligencia.jsp">Inteligencia</a></li>
            <li><a href="preguntas.jsp">Preguntas</a></li>
            <li><a href="acerca_de.jsp">Acerca de</a></li>
        </ul>
        <div class="nav-header center">
            <h1>Acerca de</h1>
            <div class="tagline">Conozco mas sobre nuestro equipo de trabajo</div>
        </div>
    </div>
</nav>
<ul class="side-nav" id="nav-mobile">
    <li class="active"><a href="../index.jsp">Inicio</a></li>
    <li><a href="inteligencia.jsp">Inteligencia</a></li>
    <li><a href="preguntas.jsp">Preguntas</a></li>
    <li><a href="acerca_de.jsp">Acerca de</a></li>
</ul>

<br><br><br>

<div class="container">
    <div class="row">
        <div class="col s6">
            <img class="responsive-img" src="../public/img/alberto.png" alt="">
        </div>
        <div class="col s6">
            <br><br><br><br><br><br>
            <table  class="responsive-table">
                <thead>
                <tr>
                    <th>Nombre:</th>
                    <th>Lucas Alberto</th>
                </tr>
                <tr>
                    <th>Apellidos:</th>
                    <th>Alonso Cruz</th>
                </tr>
                <tr>
                    <th>Estudiante del:</th>
                    <th>Instituto tecnologico de CD. Altamirano</th>
                </tr>
                <tr>
                    <th>Nick:</th>
                    <th>Alberto Alonso</th>
                </tr>
                </thead>
            </table>

        </div>
    </div>
</div>

<br><br><br>

<jsp:include page='../extends/footer.jsp'></jsp:include>
