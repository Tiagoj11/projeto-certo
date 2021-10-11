<%-- 
    Document   : recebedadosunidademedida
    Created on : 26 de ago. de 2021, 15:05:14
    Author     : Joao
--%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="Modelos.UnidMed"%>
<%
    String descUnidMed = (request.getParameter("descUnidMed"));
    
    UnidMed med = new UnidMed();
    med.setDescUnidMed(descUnidMed);

    if(med.incluirUnidMed()){
        response.sendRedirect("cadastraunidademedida.jsp?pmensagem=Unidade de Medida Incluida com Sucesso");
    } else {
        response.sendRedirect("cadastraunidademedida.jsp?pmensagem=Problemas ao Cadastrar o Unidade de Medida");
    }          
%>        
       