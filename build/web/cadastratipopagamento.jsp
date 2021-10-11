<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="Modelos.TipoPagamento"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Barbearia Parada Diaria</title>       
        <link rel="stylesheet" href="css/padraotelacadastro.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">  
            <form id="paradadiaria" action="recebedadostipopagamento.jsp" method="POST">
            <h3>Cadastro de Tipos de Pagamento</h3>            
                <label class="cabecalho" id="msg"> 
                    <%
                        if(request.getParameter("pmensagem") != null)         
                            out.write(request.getParameter("pmensagem"));
                    %>
                </label>
                
                <fieldset>
                    <label>Descrição</label>
                    <div class="desctipopagto">
                    <input id="descTipoPagto" name="descTipoPagto" type="text" required maxlength="20" />
                    <label id="validadesc" class="validacampos"></label>
                    </div>
                </fieldset><br>
                
                <div class="row">
                    <div class="form-group col-md-2 h-5">
                        <input type="submit" value="Cadastrar" class="btn btn-primary" onclick="enviaForm()" />
                    </div>
                    <div class="form-group col-md-2 h-5">                                 
                        <input type="reset"  value="Cancelar" class="btn btn-danger"/>                        
                    </div>
                </div>
            </form>         
        <script>
            function enviaForm(){
                
                if (document.getElementById("desctipopagto").value === ""){                    
                    document.getElementById("validadesc").innerHTML = "Informe a DESCRIÇÃO";
                    nomeclinico[0].focus();
                    exit(0);
                }
                document.forms[0].submit();
                response.sendRedirect("nulo.html");
            }        
        </script>    
    </body>
</html>