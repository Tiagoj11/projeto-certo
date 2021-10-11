<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>PARADA DIÁRIA</title>
  <link rel="stylesheet" href="./telapadrao.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>
  <body>

    <div class="container">  
      <form id="bomasilo" action="" method="post">

        <h3>Cadastro de Produtos</h3>
        <label> Nome </label>
        <fieldset>
          <input placeholder="Informe o Nome" type="text" required autofocus>
        </fieldset>

        <fieldset>
          <label>Email</label>
          <input placeholder="Informe o email " type="email" required>
        </fieldset>

        <fieldset>
          <label>Fone</label>
          <input placeholder="Informe o Fone" type="tel" required>
        </fieldset>

        <fieldset>
          <label>Site</label>
          <input placeholder="Informe seu site" type="url" required>
        </fieldset>

        <fieldset>
          <label>Mensagem</label>
          <textarea placeholder="Descreva sua mensagem aqui" required></textarea>
        </fieldset>

       
         <div class="row">
                    <div class="form-group col-md-3 h-10">
                        <input type="submit" value="Cadastrar" class="btn btn-primary" onclick="enviaForm()" />
                    </div>
                    <div class="form-group col-md-3 h-10">                                 
                        <input type="reset"  value="Cancelar" class="btn btn-danger"/>                        
                    </div>
                </div>
        </fieldset
      </form>      
    </div>  
  </body>
</html>
