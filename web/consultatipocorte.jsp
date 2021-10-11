<%-- 
    Document   : consultatipocorte
    Created on : 7 de set de 2021, 18:31:51
    Author     : andrey
--%>

<%@page import="Modelos.TipoCorte"%>
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
        
    </head>
    <header>
            <script src="scripts/cabecalho.js"></script> 
    </header>
    
    <body>
        <script src="scripts/menu.js"></script>  
        <h1>Consulta Corte</h1>
        <hr />
        
        <%
          TipoCorte cor = new TipoCorte();
          List<TipoCorte> corte = cor.consultarListaTipoCorte();
        %>
        <table class="table table-striped">
            <thead>
              <th scope="col">Descrição do Corte</th>
              <th scope="col">Editar</th>
              <th scope="col">Excluir</th>
             
            </thead>
            <tbody>
                <% for(TipoCorte c : corte) { %>
                   <tr>
                        <td><% out.write(c.getDesctipoCorte());  %></td>
                        <td><%out. write("<a href=editarcliente. jsp?cpf="+c.getCodtipoCorte()+">Editar</a>");%></td> 
                        <td><%out. write("<a href=excluircliente.jsp?cpf="+c.getCodtipoCorte()+">Excluir</a>");%></td>                         
                   </tr> 
                <%}%>
            </tbody>
        </table>
    </body>
</html>