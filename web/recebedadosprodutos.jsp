<%@page import="Modelos.Produtos"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
        <%
          //recebe os valores da tela HTML  
          String codProduto  = request.getParameter ("codProduto");
          String descProduto = request.getParameter ("descProduto");
          String descUnidMed = request.getParameter ("descUnidMed");
          Double vlrUnitario = Double.parseDouble(request.getParameter("vlrUnitario"));
          
          
          //instancia o produto
          Produtos produtos = new Produtos();
          
          produtos.setCodProduto (codProduto);
          produtos.setDescProduto(descProduto);
          produtos.setDescUnidMed(descUnidMed);
          produtos.setVlrUnitario(vlrUnitario);
          
          if(produtos.incluirProduto()){
                response.sendRedirect("cadastraproduto.jsp?pmensagem=Produto Incluido com Sucesso");
          }
          else {
                response.sendRedirect("cadastraproduto.jsp?pmensagem=Problemas ao Incluir Produto");
          }
        %>

