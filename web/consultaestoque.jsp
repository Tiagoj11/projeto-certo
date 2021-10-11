<%@page import="Modelos.Estoque"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diária</title>
        <link rel="stylesheet" href="styles/estilos.css"> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <link href="css/tabelas.css" rel="stylesheet" type="text/css"/>
    </head>


    <body>
         <div id="textoprincipal">
            <h2>Consultar Estoque</h2>
        </div>
        

        <%
            Estoque est = new Estoque();
            List<Estoque> estoque = est.exibirEstoque();
        %>
        <table class="container">
            <thead>
                <tr>
                    <th><h1>Codigo do produto</h1></th>
                    <th><h1>Informe a descrição do produto</h1></th>
                    <th><h1>Quantidade minima no estoque</h1></th>

                </tr>

            <tbody>

                <% for (Estoque e : estoque) { %>
                <tr>
                    <td><% out.write("" + e.getCodProduto());%></td>
                    <td><% out.write("" + e.getQtdeestoque());  %></td>
                    <td><% out.write("" + e.getQtdeStqMinimo()); %></td>
                    <td><%out.write("<a href=editarCodProduto.jsp?CodProduto=" + e.getCodProduto() + ">Editar</a>");%> </td> 
                    <td><%out.write("<a href=excluirCodProduto.jsp?CodProduto=" + e.getCodProduto() + ">Excluir</a>");%></td>
                    <td><%out.write("<a href=editarQtdeestoque.jsp?Qtdeestoque=" + e.getQtdeestoque() + ">Editar</a>");%> </td> 
                    <td><%out.write("<a href=excluirQtdeestoque.jsp?Qtdeestoque=" + e.getQtdeestoque() + ">Excluir</a>");%></td>  
                    <td><%out.write("<a href=editarQtdeSqtMinimo.jsp?QtdeSqtMinimo=" + e.getQtdeStqMinimo() + ">Editar</a>");%> </td> 
                    <td><%out.write("<a href=excluirQtdeSqtMinimo.jsp?QtdeSqtMinimo=" + e.getQtdeStqMinimo() + ">Excluir</a>");%></td>                          
                </tr> 
                <%}%>   
            </tbody>
        </table>

    </body>
</html>
