<%@ page import="controller.controladorinteligencia" %>
<%
    int idpregunt = Integer.parseInt(request.getParameter("id_inteligencias"));
    controladorinteligencia cc = new controladorinteligencia();

    if(cc.eliminarinteligencia(idpregunt)){
        response.sendRedirect("inteligencia.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>