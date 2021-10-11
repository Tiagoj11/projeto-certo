<%@page import="Modelos.TipoPagamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int codtipopagto = Integer.parseInt(request.getParameter("codtipopagto"));
    
    TipoPagamento tip = new TipoPagamento(); 
   
    tip.setCodTipoPagto(codtipopagto);
    
    if(tip.excluirTipoPagto()){
      response.sendRedirect("consultatipopagamento.jsp?pmensagem=Tipo de Pagamento excluido com sucesso");
      } else {
          response.sendRedirect("consultatipopagamento.jsp?pmensagem=Problemas ao excluir Tipo de Pagamento");
      }       
%>
  