<%@page import="Modelos.Produtos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String codproduto = request.getParameter("codproduto");
    
    Produtos produtos = new Produtos(); 
   
    produtos.setCodProduto(codproduto);
    
    if(produtos.excluirProduto()){
      response.sendRedirect("consultarproduto.jsp?pmensagem=Tipo de Pagamento excluido com sucesso");
      } else {
          response.sendRedirect("consultarproduto.jsp?pmensagem=Problemas ao excluir Tipo de Pagamento");
      }       
%>
  