<%@ page import="include.inteligencia" %>
<%@ page import="controller.controladorinteligencia" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int codigo = 0;

    try {
        codigo = Integer.parseInt(request.getParameter("idinteligencia"));
    } catch (NumberFormatException e){

    }

    String pregunta = request.getParameter("tipointeligencia");

    inteligencia act = new inteligencia(codigo, pregunta);

    controladorinteligencia cc = new controladorinteligencia();

    if(cc.agregarinteligencia(act)) {
        response.sendRedirect("inteligencia.jsp");
    } else {
        response.sendRedirect("fagregarinteligencia.jsp");
    }
%>