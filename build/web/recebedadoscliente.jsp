<%@page import="Modelos.Cliente"%>
<%@page import="Utils.Conexao"%>

<%
    String cpf      = request.getParameter("cpf");
    String nome     = request.getParameter("nome");
    String telefone = request.getParameter("telefone");
    String email    = request.getParameter("email");
    
    Cliente cli = new Cliente();
 
    cli.setCpf     (request.getParameter("cpf"));
    cli.setNome    (request.getParameter("nome"));
    cli.setTelefone(request.getParameter("telefone"));
    cli.setEmail   (request.getParameter("email"));
    
    if (cli.incluirCliente()) {
            response.sendRedirect("cadastracliente.jsp?pmensagem=Cliente salvo com sucesso");
    } else {
            response.sendRedirect("cadastracliente.jsp?pmensagem=Problemas ao salvar cliente");
    }
%>
