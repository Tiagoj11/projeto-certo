<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="Modelos.Produtos"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Barbearia Parada Diaria</title>       
        <link rel="stylesheet" href="css/padraotelacadastro.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/cadastro.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">  
            <form id="paradadiaria" action="recebedadosprodutos.jsp" method="POST">
            <h3>Cadastro de Produtos</h3>            
                <label class="cabecalho" id="msg"> 
                    <%
                        if(request.getParameter("pmensagem") != null)         
                            out.write(request.getParameter("pmensagem"));
                    %>
                </label>
                
                <fieldset>
                    <label>Código</label>
                    <div   class="codProduto">
                    <input id="codProduto" name="codProduto" type="text" required maxlength="20" />
                    <label id="validadesc" class="validacampos"></label>
                    </div>
                    
                    <label>Descrição</label>
                    <div    class="descProduto">
                    <input  id="descProduto" name="descProduto" type="text" required maxlength="20" />
                    <label  id="validadesc" class="validacampos"></label>
                    </div>
                    
                    <label>Unidade de Medida</label>
                    <div   class="descUnidMed">
                    <input id="descUnidMed" name="descUnidMed" type="text" required maxlength="20" />
                    <label id="validadesc" class="validacampos"></label>
                    </div>
                    
                    <label>Valor</label>
                    <div   class="vlrUnitario">
                    <input id="vlrUnitario" name="vlrUnitario" type="number" required maxlength="20" />
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
                
                if (document.getElementById("codProduto").value === ""){                    
                    document.getElementById("validadesc").innerHTML = "Informe o Código do Produto";
                    nomeclinico[0].focus();
                    exit(0);
                }
                
                if (document.getElementById("descProduto").value === ""){                    
                    document.getElementById("validadesc").innerHTML = "Informe a Descrição do Produto";
                    nomeclinico[0].focus();
                    exit(0);
                }
                
                if (document.getElementById("descUnidMed").value === ""){                    
                    document.getElementById("validadesc").innerHTML = "Informe a Unidade de Medida";
                    nomeclinico[0].focus();
                    exit(0);
                }
                
                if (document.getElementById("vlrUnitario").value === ""){                    
                    document.getElementById("validadesc").innerHTML = "Informe o Valor Unitário";
                    nomeclinico[0].focus();
                    exit(0);
                }
                document.forms[0].submit();
                response.sendRedirect("nulo.html");
            }        
        </script>    
    </body>
</html>