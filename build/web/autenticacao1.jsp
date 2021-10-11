<%@page import="Modelos.Cliente"%>
    <%
        String vEmail = request.getParameter("email");
        String vSenha = request.getParameter("senha");
        Cliente cli = new Cliente();
        if (cli.autenticarCliente(vEmail, vSenha)) {
                response.sendRedirect("cadastracliente1.jsp?status=Login Efetuado com Sucesso");
                
        } else {
                out.print("<script>");
                out.print("alert('Arrego Recruta, seu Bisonho!');");
                out.print("</script>");
                
        }
    %>


