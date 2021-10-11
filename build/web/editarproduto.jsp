<%@page import="Modelos.Produtos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Brabearia Parada Diária</title>
    </head>
    <body>
        <h1>Editar produtos</h1>
        <hr />
        <%
          String pcodProduto = request.getParameter("codProduto");
          Produtos p = new Produtos();
          if (pcodProduto != null){
              p = p.consultarProduto(pcodProduto);
          }    
        %>
        <form action="recebeeditaprodutos.jsp" method="POST">
           
            <br />
            <label>codProduto</label>
            <input type="text" name="codProduto" 
                  readonly ="true" value="<%out.write(p.getCodProduto());%>" />
            <br />
            <label>descProduto</label>
            <input type="text" name="descProduto" 
                   value="<%out.write(p.getDescProduto());%>" />
            <br />
            <label>descUniMed</label>
            <input type="text" name="descUnidMed" 
                   value="<%out.write(p.getDescUniMed());%>" />
            
            <br />
            <label>vlrUnitario</label>
            <input type="text" name="vlrUnitario" 
                   value="<%out.write(""+p.getVlrUnitario());%>" />
          
            <hr />
            <input type="submit" value="Alterar" />
        </form>
    </body>
</html>
