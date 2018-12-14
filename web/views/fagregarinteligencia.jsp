<jsp:include page='../extends/header.jsp'></jsp:include>
<br><br>

<div class="container">
    <form class="col s12" action="agregarinteligencia.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <h2>AGREGAR INTELIGENCIA</h2>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idinteligencia" name="idinteligencia" type="text" value="">
                <label for="idinteligencia" class="center-align">Codigo</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="tipointeligencia" name="tipointeligencia" type="text" value="">
                <label for="tipointeligencia" class="center-align">Tipo de Inteligencia</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Insertar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s4">
                <div class="col s4"></div>
                <a class="btn col s4" href="inteligencia.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>

<br><br>
<jsp:include page='../extends/footer.jsp'></jsp:include>