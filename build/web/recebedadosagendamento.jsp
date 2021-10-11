<%@page import="java.sql.Date"%>
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
            String cpfCliente    = request.getParameter("cpfCliente "); 
            Date datagenda       = Date.valueOf (request.getParameter("datagenda"));
    int codtipoCorte     = Integer.parseInt (request.getParameter("codtipoCorte "));
    
    int nrAgendamento    =  Integer.parseInt (request.getParameter ("nrAgendamento"));
    String statusAgenda  =  request.getParameter("statusAgenda");
    
    
    Agendamento ag = new Agendamento();
 
    ag.setCodtipoCorte (codtipoCorte);
    ag.setDatahoraAg(datahoraAg);
    ag.setNrAgendamento (nrAgendamento);
    ag.setStatusAgenda (statusAgenda);
    ag.setCpfCliente (cpfCliente);
    
    
    if (ag.incluirAgendamento()) {
            response.sendRedirect("cadastraagendamento.jsp?pstatus=agendamento cadastrado com Sucesso");
    } else {
            response.sendRedirect("cadastraagendamento.jsp?pstatus=Erro ao Cadastrar agendamento");
    }
    
%>
    </body>
</html>