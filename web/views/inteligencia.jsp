<jsp:include page='../extends/header.jsp'></jsp:include>

<%@ page import="include.inteligencia" %>
<%@ page import="controller.controladorinteligencia" %>
<%@ page import="java.util.ArrayList" %>
<br><br><br>
<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h2>TODAS LAS INTELIGENCIAS</h2>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <a class="btn" href="fagregarinteligencia.jsp">Nuevo</a>
        </div>
    </div>
    <div class="row margin">
        <div class="col s12 center">
            <table class="striped responsive-table">
                <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Tipo de inteligencia</th>
                    <th></th>
                </tr>
                </thead>
                <%

                    String htmlcode = "<tbody>";
                    controladorinteligencia cc = new controladorinteligencia();
                    int contador = 0;
                    ArrayList<inteligencia> pp = new ArrayList<inteligencia>();
                    pp = cc.consultainteligencia();


                    if(pp.size() > 0){
                        for(int a=0; a<pp.size();a++){
                            htmlcode += "<tr><td>" + pp.get(a).getId_inteligencia()
                                    + "</td><td>" + pp.get(a).getTipo_de_inteligencia()
                                    + "</td><td>"
                                    + "<a class=\"btn blue\" href=\"fmodicarinteligencia.jsp?id_inteligencias="+pp.get(a).getId_inteligencia()+"\"><i class=\"material-icons\">create</i></a>"
                                    + " "
                                    + " "
                                    + "<a class=\"btn red\" onclick=\"eliminar_inteligencia('"+ pp.get(a).getId_inteligencia()+"')\"><i class=\"material-icons\">delete</i></a>"
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