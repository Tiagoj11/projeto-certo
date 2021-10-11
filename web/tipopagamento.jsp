<%@page import="java.util.List"%>
<%@page import="Modelos.TipoPagamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diária</title>
        <link rel="stylesheet" href="styles/estilos.css"> 
    </head>
    <header>
            <script src="scripts/cabecalho.js"></script> 
    </header>
    
    <body>
        <script src="scripts/menu.js"></script>  
        <h1>Consulta Tipos Pagto</h1>
        <hr />
        <%
          TipoPagamento tip = new TipoPagamento();
          List<TipoPagamento> tipos = tip.consultarListaGeralTipoPagamento();
        %>
        <table>
            <thead>
              <th>codTipoPagto</th>
              <th>Tipo Pagto</th>
            </thead>
            <tbody>
                <% for(TipoPagamento t : tipos) { %>
                   <tr>
                        <td><% out.write(t.getCodTipoPagto());   %></td>
                        <td><% out.write(t.getDescTipoPagto());  %></td>
                   </tr> 
                <%}%>
            </tbody>
        </table>
    </body>
</html>

