<jsp:include page='../extends/header.jsp'></jsp:include>
<br><br>

<%@ page import="controller.controladorpreguntas" %>
<%@ page import="include.preguntas" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="controller.controladorinteligencia" %>
<%@ page import="include.inteligencia" %>

<%
controladorinteligencia ccc = new controladorinteligencia();
ArrayList<inteligencia> intel = new ArrayList<inteligencia>();
intel = ccc.obtenerinteligenciaFK();

String htmlselect = "";
htmlselect += "<select name='inteligeniafk'>\n" +
"                <option value=''>Tipo de Inteligencia" +
    "</option>\n";
for(int a=0; a<intel.size();a++){
htmlselect += "<option value='"+intel.get(a).getId_inteligencia()+"'>"+intel.get(a).getTipo_de_inteligencia()+"</option>\n";
}
htmlselect += "</select>";
%>

<div class="container">
    <form class="col s12" action="preguntaAgregar.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <h2>AGREGAR PREGUNTA</h2>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idpregunta" name="idpregunta" type="text" value="">
                <label for="idpregunta" class="center-align">Codigo</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="npregunta" name="npregunta" type="text" value="">
                <label for="npregunta" class="center-align">Numero de la pregunta</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="preguntas" name="preguntas" type="text" value="">
                <label for="preguntas" class="center-align">Pregunta</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <%
                    out.print(htmlselect);
                %>
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
                <a class="btn col s4" href="preguntas.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>

<br><br>
<jsp:include page='../extends/footer.jsp'></jsp:include>