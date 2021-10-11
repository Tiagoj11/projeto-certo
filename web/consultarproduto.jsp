<%-- 
    Document   : consultarproduto
    Created on : 27 de ago. de 2021, 11:01:28
    Author     : rodrigo.silva
--%>
<%@page import="java.util.List"%>
<%@page import="Modelos.Produtos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diária</title>
        <link rel="stylesheet" href="styles/estilos.css"> 
        <link href="css/tabelas.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>        
           <div id="textoprincipal">
            <h2>Consultar Produtos</h2>
        </div>
        <%
          Produtos p = new Produtos();
          List<Produtos> Produtos = p.consultarlistaproduto();
        %>
        
         <table class="container">
            <thead>
                <tr>
                    <th><h1>Codigo do produto</h1></th>
                    <th><h1>Descrição do produto</h1></th>
                    <th><h1>Codigo unidade de medida</h1></th>
                    <th><h1>Valor unitario</h1></th>
                    <th><h1>Editar</h1></th>
                    <th><h1>Excluir</h1></th>
                </tr>

            <tbody>
                 <% for(Produtos produtos : Produtos) {%>
                   <tr>
                        <td><% out.write(""+p.getCodProduto      ()); %></td>
                        <td><% out.write   (p.getDescProduto     ()); %></td>
                        <td><% out.write   (p.getCodUnidMed()); %></td>
                        <td><% out.write   (""+p.getVlrUnitario     ()); %></td>
                         <td><%out.write("<a href=editarproduto.jsp?CodProduto ="+p.getCodProduto()+">Editar</a>");%></td> 
                         <td><%out.write("<a href=excluirproduto.jsp?CodProduto="+p.getCodProduto()+">Excluir</a>");%></td>                         
                   </tr> 
                <%}%>
            </tbody>
    </table>            

</body>
</html>
