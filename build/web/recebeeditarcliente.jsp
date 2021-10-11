<%@page import="Modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        //recebe os valores da tela HTML  
            String cpf      = request.getParameter("cpf");
            String nome     = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            String email    = request.getParameter("email");
          
            //instancia o Cliente
            Cliente cliente = new Cliente();
            cliente.setCpf(cpf);
            cliente.setNome(nome);
            cliente.setTelefone(telefone);
            cliente.setEmail(email);
          
            if(cliente.alterarCliente()){
                response.sendRedirect("consultacliente.jsp?pmensagem=Cliente editado com sucesso");
            } else {
                response.sendRedirect("consultacliente.jsp?pmensagem=Problemas ao editar cliente");
            }          
        %>        
       <hr />
       <a href="consultacliente.jsp">Consulta cliente</a> 
    </body>
</html>
