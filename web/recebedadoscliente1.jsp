<%@page import="Modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cliente cli = new Cliente();
 
    cli.setCpf(request.getParameter("cpf"));
    cli.setNome(request.getParameter("nome"));
    cli.setTelefone(request.getParameter("telefone"));
    cli.setEmail(request.getParameter("email"));
    cli.setSenha(request.getParameter("senha"));
    if (cli.incluirCliente()) {
            response.sendRedirect("cadastracliente1.jsp?pstatus=Salvo com Sucesso");
    } else {
            response.sendRedirect("cadastracliente1.jsp?pstatus=Erro ao Cadastrar Cliente");
    }
    
%>
