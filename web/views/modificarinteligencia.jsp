<%@ page import="include.inteligencia" %>
<%@ page import="controller.controladorinteligencia" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int codigo = 0;

    try {
        codigo = Integer.parseInt(request.getParameter("idinteligencia"));
    } catch (NumberFormatException e){

    }

    String tipointeligencia = request.getParameter("tipointeligencia");

    inteligencia act = new inteligencia(codigo, tipointeligencia);

    controladorinteligencia cc = new controladorinteligencia();

    if(cc.actualizarinteligencia(act)) {
        response.sendRedirect("inteligencia.jsp");
    } else {
        response.sendRedirect("fmodicarinteligencia.jsp");
    }
%>