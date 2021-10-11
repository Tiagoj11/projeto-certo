<%@page import="Modelos.Agendamento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diaria</title>
    </head>
    <body>
        
        <%
            String agendamento  = request.getParameter("agendamento");
            Agendamento a = new Agendamento();
            if (a != null){
                a = a.consultarAgendamento(Integer.parseInt(agendamento));
                if(a.excluirAgendamento()){
                    response.sendRedirect("consultagendamento.jsp?pmensagem=Agendamento exclúido com sucesso");
                    } else {
                        response.sendRedirect("consultaagendamento.jsp?pmensagem=Problemas ao excluir agendamento");
                    }          
            }
        %>
        <hr />
    </body>
</html>