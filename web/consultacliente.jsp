<%@page import="Modelos.Cliente"%>
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
            <h2>Consulta Clientes</h2>
        </div>

        <%
            Cliente cli = new Cliente();
            List<Cliente> clientes = cli.consultarListaGeralCliente();
        %>
        <table class="container">
            <thead>
                <tr>
                    <th><h1>CPF</h1></th>
                    <th><h1>Nome</h1></th>
                    <th><h1>Telefone</h1></th>
                    <th><h1>E-mail</h1></th>
                    <th><h1>Editar</h1></th>
                    <th><h1>Excluir</h1></th>
                </tr>

            <tbody>
                <% for (Cliente c : clientes) { %>
                <tr>
                    <td><% out.write(c.getCpf());   %></td>
                    <td><% out.write(c.getNome());  %></td>
                    <td><% out.write("" + c.getTelefone()); %></td>
                    <td><% out.write(c.getEmail()); %></td>
                    <td><%out.write("<a href=editarcliente.jsp?cpf=" + c.getCpf() + ">Editar</a>");%></td> 
                    <td><%out.write("<a href=excluircliente.jsp?cpf=" + c.getCpf() + ">Excluir</a>");%></td>                         
                </tr> 
                <%}%>
            </tbody>
    </table>            

</body>
</html>