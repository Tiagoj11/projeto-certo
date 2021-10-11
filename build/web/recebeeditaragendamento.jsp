<%@page import="Modelos.Agendamento"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        // Recebe os valores da tela HTML 
            int nrAgendamento = Integer.parseInt(request.getParameter("nrAgendamento"));
            Date datahoraAg = Date.valueOf(request.getParameter("datahoraAg"));
            String statusAgenda = request.getParameter("statusAgenda");
            int codtipoCorte = Integer.parseInt(request.getParameter("codtipoCorte"));
            String cpfCliente = request.getParameter("cpfCliente");

            Agendamento a = new Agendamento();
            a.setNrAgendamento(nrAgendamento);
            a.setDatahoraAg(datahoraAg);
            a.setStatusAgenda(statusAgenda);
            a.setCodtipoCorte(codtipoCorte);
            a.setCpfCliente(cpfCliente);
          
            if(a.alterarCliente()){
                response.sendRedirect("consultaagendamento.jsp?pmensagem=Agendamento editado com sucesso");
            } else {
                response.sendRedirect("consultacliente.jsp?pmensagem=Problemas ao editar agendamento");
            }          
        %>        
        <hr />
        <a href="consultaagendamento.jsp">Consulta agendamento</a> 
    </body>
</html>