<%-- 
    Document   : editarunidademedida
    Created on : 26 de ago. de 2021, 15:36:19
    Author     : Joao
--%>
<%@page import="Modelos.UnidMed"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Barbearia Parada Diaria</title>
    </head>
    <body>
        <h1>Editar Unidade Medida</h1>
        <hr/>
        <%
            String codUnidMed = request.getParameter("codUnidMed");
            UnidMed unidmed = new UnidMed();
            if (codUnidMed != null){
              unidmed = unidmed.consultarUnidMed(Integer.parseInt(codUnidMed));
          } 
            %>
            <form action="recebeeditarunidademedida.jsp" method="POST">
            <label> codigo Unidade Medida </label>
            <input type="text" name="codUnidMed" 
                   readonly="true"
                   value="<%out.write(""+unidmed.getCodUnidMed());%>"/>
            <br />
            <label> Descricao Unidade Medida</label>
            <input type="text" name="descUnidMed" 
                   value="<%out.write(unidmed.getDescUniMed());%>" />
            
                <hr />
            <input type="submit" value="Alterar" />
        </form>
    </body>
</html>
