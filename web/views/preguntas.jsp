<jsp:include page='../extends/header.jsp'></jsp:include>

<%@ page import="include.preguntas" %>
<%@ page import="controller.controladorpreguntas" %>
<%@ page import="java.util.ArrayList" %>
<br><br><br>
<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h2>TODAS LAS PREGUNTAS</h2>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="agregarpreguntas.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped responsive-table">
                <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Numero de pregunta</th>
                    <th>Pregunta</th>
                    <th>Clave Inteliencia.</th>
                    <th>Inteliencia.</th>
                    <th></th>
                </tr>
                </thead>
                <%

                    String htmlcode = "<tbody>";
                    controladorpreguntas cc = new controladorpreguntas();
                    int contador = 0;
                    ArrayList<preguntas> pp = new ArrayList<preguntas>();
                    pp = cc.consultaanad();


                    if(pp.size() > 0){
                        for(int a=0; a<pp.size();a++){
                            htmlcode += "<tr><td>" + pp.get(a).getId_pregunta()
                                    + "</td><td>" + pp.get(a).getNum_pregunta()
                                    + "</td><td>" + pp.get(a).getPregunta()
                                    + "</td><td>" + pp.get(a).getId_inteligencia()
                                    + "</td><td>" + pp.get(a).getTipointeligencia()
                                    + "</td><td>"
                                    + "<a class=\"btn blue\" href=\"fmeditarpregunta.jsp?id_pregunta_test="+pp.get(a).getId_pregunta()+"\"><i class=\"material-icons\">create</i></a>"
                                    + " "
                                    + " "
                                    + "<a class=\"btn red\" onclick=\"eliminar_pregunta('"+ pp.get(a).getId_pregunta()+"')\"><i class=\"material-icons\">delete</i></a>"
                                    + "</td></tr>";
                        }
                    } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen carreras</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
            </table>
        </div>
    </div>
</div>
<br><br><br>
<jsp:include page='../extends/footer.jsp'></jsp:include>