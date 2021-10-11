<%@page import="Modelos.Cliente"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parda Diária</title>
    </head>
    <body>
        
        <%
          String cpf = request.getParameter("cpf");
          Cliente c = new Cliente();
          if (cpf != null){
              c = c.consultarCliente(cpf);
              if(c.excluirCliente()){
                response.sendRedirect("consultacliente.jsp?pmensagem=Cliente excluido com sucesso");
                } else {
                    response.sendRedirect("consultacliente.jsp?pmensagem=Problemas ao excluir cliente");
                }
          }          
        %>
        <hr /> 
    </body>
</html>
