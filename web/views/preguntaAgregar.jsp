<%@ page import="include.preguntas" %>
<%@ page import="controller.controladorpreguntas" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int codigo = 0;
    int nump = 0;
    int idinteligencia = 0;

    try {
        codigo = Integer.parseInt(request.getParameter("idpregunta"));
        nump = Integer.parseInt(request.getParameter("npregunta"));
        idinteligencia = Integer.parseInt(request.getParameter("inteligeniafk"));
    } catch (NumberFormatException e){

    }

    String pregunta = request.getParameter("preguntas");

    preguntas act = new preguntas(codigo,nump,pregunta,idinteligencia);

    controladorpreguntas cc = new controladorpreguntas();

    if(cc.agregarpregunta(act)) {
        response.sendRedirect("preguntas.jsp");
    } else {
        response.sendRedirect("agregarpreguntas.jsp");
    }
%>