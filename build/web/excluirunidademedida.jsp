<%-- 
    Document   : excluirunidademedida
    Created on : 26 de ago. de 2021, 16:17:07
    Author     : Joao
--%>
<%@page import="Modelos.UnidMed"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diaria</title>
    </head>
    <body>
        <body>
        
        <%
          String codUnidMed = request.getParameter("codUnidMed");
            UnidMed unidmed = new UnidMed();
          if (codUnidMed != null){
              unidmed = unidmed.consultarUnidMed(codUnidMed);
              if(unidmed.excluirUnidMed()){
                response.sendRedirect("consultaunidademedida.jsp?pmensagem=Unidade de medida excluida com sucesso");
                } else {
                    response.sendRedirect("consultaunidademedida.jsp?pmensagem=Problemas ao excluir cliente");
                }
          }          
        %>
        <hr /> 
    </body>
</html>
