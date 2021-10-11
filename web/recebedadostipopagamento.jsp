<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="Modelos.TipoPagamento"%>
<%
    String desctipopgto = (request.getParameter("descTipoPagto"));
    
    TipoPagamento tip = new TipoPagamento();
    tip.setDescTipoPagto(desctipopgto);

    if(tip.incluirTipoPagto()){
        response.sendRedirect("cadastratipopagamento.jsp?pmensagem=Tipo de Pagamento incluido com sucesso");
    } else {
        response.sendRedirect("cadastratipopagamento.jsp?pmensagem=Problemas ao cadastrar o Tipo de Pagamento");
    }          
%>        
       