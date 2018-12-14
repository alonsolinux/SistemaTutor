<%@ page import="controller.controladorpreguntas" %>
<%
    int idpregunt = Integer.parseInt(request.getParameter("id_pregunta_test"));
    controladorpreguntas cc = new controladorpreguntas();

    if(cc.eliminarpreguntas(idpregunt)){
        response.sendRedirect("preguntas.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>