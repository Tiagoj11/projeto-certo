<%@page import="Modelos.Produtos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <%

        //recebe os valores da tela HTML  
        String codProduto  = request.getParameter ("codproduto");
        String descProduto = request.getParameter ("descproduto");            
        String descUnidMed = request.getParameter ("descUnidMed");
        String vlrUnitario = request.getParameter ("vlrUnitario");

        //instancia o produto
        Produtos p = new Produtos();
        p.setCodProduto   (codProduto);
        p.setDescProduto  (descProduto);
        p.setDescUnidMed  (descUnidMed);
        p.setVlrUnitario  (Double.parseDouble(vlrUnitario));
        if (p.alterarProduto()) {
            response.sendRedirect("consultaproduto.jsp?pmensagem=Produto alterado com sucesso" + "codproduto=" + codProduto);
        } else {
            response.sendRedirect("consultaproduto.jsp?pmensagem=Problemas ao salvar produto");
        }
        %>        