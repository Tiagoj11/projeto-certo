<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Parada Di�ria Barbearia - Regisro de Cliente</title>
  <link rel="stylesheet" href="css/cliente1.css">

</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="index.html"><img src="assets/img/logomarca_pequena.png" height="40px" alt="..." /></a>
            </div class="dropdown">
<%-- label para lan�ar mensagem de feedback da atualiza��o --%>
                            <label class="cabecalho" id="msg"> 
                                <%
                                    if(request.getParameter("pstatus") != null)
                                        out.write(request.getParameter("pstatus"));
                                %>
                            </label>
<%-- Tela de Informa��es para o Usu�rio --%>                            
<section class="user">
  <div class="user_options-container">
    <div class="user_options-text">
      <div class="user_options-unregistered">
        <h2 class="user_unregistered-title">N�o tem conta ?</h2>
        <p class="user_unregistered-text">Clique no bot�o abaixo para fazer seu registro.</p>
        <p class="user_unregistered-text">Em seguida ser� aberta uma tela para fazer o seu login,</p>
        <p class="user_unregistered-text">e ent�o, voc� poder� fazer seu primeiro agendamento.</p>
        <button class="user_unregistered-signup" id="signup-button">Registre-se</button>
      </div>

      <div class="user_options-registered">
        <h2 class="user_registered-title">J� tem uma conta?</h2>
        <p class="user_registered-text">Preencha as informa��es solicitadas e clique no bot�o "Entrar".</p>
        <button class="user_registered-login" id="login-button">Entrar</button>
      </div>
    </div>
    
    <div class="user_options-forms" id="user_options-forms">
        <div class="user_forms-login">
            <h2 class="forms_title">Entrar</h2>
            <form class="forms_form" action="autenticacao1.jsp" method="post">
                <fieldset class="forms_fieldset">

                    <div class="forms_field">
                        <input id="email" name="email" type="email" placeholder="Email" class="forms_field-input" required autofocus />
                    </div>
                    <div class="forms_field">
                        <input id="senha" name="senha" type="password" placeholder="Password" class="forms_field-input" required />
                    </div>
                </fieldset>
                
                <div class="forms_buttons">
                    <input type="submit" value="Acessar" class="forms_buttons-action">
                </div>
            </form>
        </div>
        
        <div class="user_forms-signup">
            <h2 class="forms_title">Registre-se</h2>
            <form class="forms_form" action="recebedadoscliente1.jsp" method="post">
                <fieldset class="forms_fieldset">

                    <div class="forms_field">
                        <input id="cpf" name="cpf" type="number" placeholder="CPF" class="forms_field-input" required maxlength="14"/>
                    </div>
                    
                    <div class="forms_field">
                      <input  id="nome" name="nome" type="text" placeholder="Nome Completo" class="forms_field-input" required />
                    </div>
                    
                    <div class="forms_field">
                      <input id="telefone" name="telefone" type="text" placeholder="Fone" class="forms_field-input" required maxlength="11"/>
                    </div>
                    
                    <div class="forms_field">
                      <input id="email" name="email" type="email" placeholder="email" class="forms_field-input" required />
                    </div>

                    <div class="forms_field">
                      <input id="senha" name="senha" type="password" placeholder="Senha" class="forms_field-input" required />
                    </div>

                </fieldset>

                <div class="forms_buttons">
                    <input type="submit" value="Registre-se" class="forms_buttons-action">
                </div>
            </form>
        </div>
    </div>
  </div>
</section>


<!-- partial -->
<script  src="scripts/cliente.js"></script>
  <script>
      function mostraok(){
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm">Small modal</button>
        <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                </div>
            </div>
        </div>      
  </script>
  
</body>
</html>
