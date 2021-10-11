<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Agendamento"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diaria</title>
        <link rel="stylesheet" href="styles/estilos.css"> 
        <link href="css/consultaagendamento.css" rel="stylesheet" type="text/css"/>
     
    </head>
    <body
        <%
            List<Agendamento> agendamen = new ArrayList();
            String cpf = request.getParameter("cpf");
            if(cpf != null){
                Agendamento agendamento = new Agendamento();
                agendamen = agendamento.ConsultarListaAgendamento();
            }
        %>
        <script src="scripts/menu.js"></script> 
        <div id="textop">
        <hl>Consultar Agendamento</hl>
        </div>
        <hr />
      <div id="teste">  
        <form action="consultaagendamento.jsp" method="POST">
            <label>Digite o número do agendamento</label>
            <p class "botao">
            <input type="text" name="cpf" />
            <input type="submit" value="Consultar" />
           </p>
            <table>
                <tbody>
                    <%for(Agendamento a: agendamen){%>
                        <tr>
                            <td><%out.write(""+a.getNrAgendamento());%></td>
                            <td><%out.write(""+a.getDatahoraAg());%></td>
                            <td><%out.write(a.getStatusAgenda());%></td>
                            <td><%out.write(a.getCodtipoCorte());%></td>
                            <td><%out.write(a.getCpfCliente());%></td>
                        </tr>
                    <%}%>
         
                </tbody>
            </table>
        </form>
      </div>
    </body>
</html>