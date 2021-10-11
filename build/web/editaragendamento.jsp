<%@page import="Modelos.Agendamento"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/estilos.css">
        <title>Barbearia Parada Diaria</title>
    </head>
        <header>
            <script src="scripts/cabecalho.js"></script> 
        </header>
        <section>
            <nav>
                <script src="scripts/menu.js"></script> 
            </nav>
            <article>
                <body>
                    <h1>editaAgendamento</h1>
                    <hr />
                    
                    <%
                        String nragendamento = request.getParameter("nragendamento");
                        Agendamento agenda = new Agendamento();
                        if (nragendamento != null){
                            agenda = agenda.consultarAgendamento(Integer.parseInt(nragendamento));
                        }    
                    %>
                    <form action="recebeeditaragendamento.jsp" method="POST">
                        <label>nrAgendamento</label>
                        <input type="text" name="nrAgendamento" 
                               readonly="true"  
                               value="<%out.write(agenda.getNrAgendamento());%>" />
                        <br />
                        <label>datahoraAg</label>
                        <input type="text" name="datahoraAg"
                               value="<%out.write(""+agenda.getDatahoraAg());%>" />
                        <br />
                        <label>statusAgenda</label>
                        <input type="text" name="statusAgenda" 
                               value="<%out.write(agenda.getStatusAgenda());%>" />
                        <br />
                        <label>codtipoCorte</label>
                        <input type="text" name="codtipoCorte"
                               value="<%out.write(agenda.getCodtipoCorte());%>" />
                        <br />
                        <label>cpfCliente</label>
                        <input type="text" name="cpfCliente"
                               readonly="true"
                               value="<%out.write(agenda.getCpfCliente());%>" />
                        <br />
                        <hr />
                        <input type="submit" value="Alterar" />
                    </form>
                </body>
            </article>
        </section>
    <footer>
        <script src="scripts/rodape.js"></script>
    </footer>                    
</html>