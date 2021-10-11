<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="Modelos.Cliente"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/padraotelacadastro.css">
        <script src="scripts/formatacampos.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    
    <body>
        <header>
            <script src="scripts/cabecalho.js"></script> 
        </header>
        <section>
            <nav>
                <script src="scripts/menu.js"></script> 
            </nav>
            
            <article>
                <h1> Clientes </h1>
                <hr /> 
                <label class="cabecalho" id="msg"> 
                    <%
                        if(request.getParameter("pmensagem") != null)         
                            out.write(request.getParameter("pmensagem"));
                    %>
                </label>
                
                <form action="recebedadoscliente.jsp" method="POST">
                    
                    <div>
                        <label for = "cpf">Cpf</label>
                        <input <input type="text" name="cpf" placeholder="Digite apenas números" style="width: 150px" maxlength="40"/> <br />
                        
                        <label for = "nome">Nome</label>
                        <input <input <input type="text" name="nome" placeholder="Nome completo" style="width: 150px" maxlength="40"/> <br />

                        <label for = "telefone">Telefone</label>
                        <input <input <input type="text" name="telefone" placeholder="Ex: 47912345678"  style="width: 150px" maxlength="40"/> <br />
                        
                        <label for = "email">Email</label>
                        <input <input <input type="text" name="email" placeholder="exemplo@gmail.com"  style="width: 150px" maxlength="40"/> <br />

                        <input type="button" value="Salvar" onclick="enviarDados()"style="width: 80px" maxlength="40"/>
                        <input type="reset" value="Cancelar" style="width: 80px" maxlength="40"/>
                    </div>   
                </form>
            </article>
                
                
        </section>
                
        <footer>
            <script src="scripts/rodape.js"></script>
        </footer> 
                
<script>
    function enviarDados(){
            var cpf = document.getElementsByName("cpf");
            if(cpf[0].value === ""){
                cpf[0].focus();
                alert("Informe o cpf");
                exit();
            }

            var nome = document.getElementsByName("nome");
            if(nome[0].value === ""){
                nome[0].focus();
                alert("Informe o nome");
                exit();
            }

            var telefone = document.getElementsByName("telefone");
            if(telefone[0].value === ""){
                telefone[0].focus();
                alert("Informe o telefone");
                exit();
            }

            var email = document.getElementsByName("email");
            if(email[0].value === ""){
                email[0].focus();
                alert("Informe o email");
                exit();
            }
            document.forms[0].submit();
    }        
    
</script>    
    </body>
</html>