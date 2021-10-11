<%-- 
    Document   : consultaunidademedida
    Created on : 26 de ago. de 2021, 15:58:50
    Author     : Joao
--%>
<%@page import="java.util.List"%>
<%@page import="Modelos.UnidMed"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diaria</title>
        <link rel="stylesheet" href="styles/estilos.css"> 
    </head>
    <body>
        <script src="scripts/menu.js"></script>  
        <h1>Consulta Unidade Medida</h1>
        <hr />
        <%
            UnidMed unidmed = new UnidMed();
            List<UnidMed> unidademedida = unidmed.consultar();
            %>
            <table>
            <thead>
              <th>Codigo Unidade Medida</th>
              <th>Descricao Unidade Medida</th>
              <th> Editar </th>
              <th> Excluir </th>
            </thead>
            <tbody>
                <% for(UnidMed um : unidademedida) {%>
                   <tr>
                       <td><% out.write(""+um.getCodUnidMed()); %></td>
                        <td><% out.write(um.getDescUniMed()); %></td>
  <td><%out.write("<a href=editarunidademedida.jsp?icodUnidMed="+um.getCodUnidMed()+">Editar</a>");%></td> 
                         <td><%out.write("<a href=excluirunidademedida.jsp?codUnidMed="+um.getCodUnidMed()+">Excluir</a>");%></td>                         
                   </tr> 
                   
                <%}%>
            </tbody>
        </table>
    </body>
</html>
