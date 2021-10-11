<%-- 
    Document   : recebeeditarunidademedida
    Created on : 26 de ago. de 2021, 16:31:25
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
        <h1>Unidade Medida Editada</h1>
        <hr />
          <%
        //recebe os valores da tela HTML  
          String codUnidMed = request.getParameter("codUnidMed");
          String descUnidMed = request.getParameter("descUnidMed");
          
          //instancia o carro
          UnidMed um = new UnidMed();
          um.setCodUnidMed(Integer.parseInt(codUnidMed));
          um.setDescUniMed(descUnidMed);
                   
          
          if(um.editarUnidMed()){
              out.write("Unidade de medida alterada com sucesso");
          }
          else
          {
              out.write("Problemas ao salvar unidade de medida");
          }
          
        %>        
       <hr />
       <a href="consultaunidademedida.jsp">Consulta unidades de medida</a> 
        
    </body>
</html>
