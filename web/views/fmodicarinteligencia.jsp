<jsp:include page='../extends/header.jsp'></jsp:include>

<%@ page import="controller.controladorinteligencia"%>
<%@ page import="include.inteligencia"%>
<%@ page import="java.util.ArrayList"%>

<%
    int inteligen = Integer.parseInt(request.getParameter("id_inteligencias"));
    controladorinteligencia cc = new controladorinteligencia();
    ArrayList<inteligencia> ppp = new ArrayList<>();
    ppp = cc.consultaid(inteligen);
%>

<br><br>

<div class="container">
    <form class="col s12" action="modificarinteligencia.jsp" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <h2>MODIFICAR INTELIGENCIA</h2>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idinteligencia" name="idinteligencia" readonly="readonly" type="text" value="<% out.print(ppp.get(0).getId_inteligencia());%>">
                <label for="idinteligencia" class="center-align">Codigo</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="tipointeligencia" name="tipointeligencia" type="text" value="<% out.print(ppp.get(0).getTipo_de_inteligencia()); %>">
                <label for="tipointeligencia" class="center-align">Tipo de Inteligencia</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Actualizar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s4">
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