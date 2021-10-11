<%@page import="Modelos.TipoCorte"%>
<%@page import="Modelos.Cliente"%>
<%@page import="Modelos.Agendamento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/padraotelacadastro.css">
        <script src="scripts/formatacampos.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
         <div class="container" >
             <div class="content">
                <%
                Cliente cli = new Cliente();
                List<Cliente> listaclientes = cli.lovCliente();
                TipoCorte tipco = new TipoCorte();
                List<TipoCorte> listatiposcorte = tipco.lovTipoCorte();
                %>
                <form id="paradadiaria" action="recebedadosagendamento.jsp" method="POST">
                   <h3 class="text-center">Cadastro de Agendamento</h3>
                   <p> </p>
                   <!-- mensage de retorno -->
                    <label class="cabecalho" id="msg"> 
                        <%
                           if(request.getParameter("pmensagem") != null)         
                           out.write(request.getParameter("pmensagem"));
                        %>
                    </label>
                    
                    <fieldset> 
                        <!--- CPF -->
                        <div class="cpfcliente">
                            <label for="cpfcliente">Cliente</label>
                            <select name="cpfcliente" id='cpfcliente'>
                                <% for(Cliente c: listaclientes){ %>
                                   <option value="<%out.write(""+c.getCpf());%>">
                                                  <% out.write(c.getNome()); %>
                                   </option>
                                <%}%>                               
                            </select> 
                        </div>
                    </fieldset>
                    
                    <fieldset>
                    <div class="row">
                            <!--- DATA -->
                        <div class="form-group col-md-3 h-10">
                            <fieldset>
                                <label>Data</label>
                                <div class="dataagenda">
                                    <input id=dataagenda name="dataagenda" type="date" required>
                                </div>
                            </fieldset>
                        </div>
                            
                        <!--- HORA -->
                        <div class="form-group col-md-3 h-10">
                            <fieldset>
                               <div class="horaagenda">
                                    <label for="horaagenda">Hora</label>
                                    <input id="horaagenda" name="horaagenda" type="text" onfocus="javascript: retirarFormatacao(this);" onblur="javascript: formatarCampos(this);" maxlength="8"/>
                                </div>
                            </fieldset> 
                        </div>
                    </div>
                    </fieldset>
                    
                    <fieldset>
                    <!--- TIPO DE CORTE  -->
                    <div class="codtipocorte">
                        <label for="codtipocorte">Cliente</label>
                        <select name="codtipocorte" id='codtipocorte'>
                            <% for(TipoCorte t: listatiposcorte){ %>
                               <option value="<%out.write(""+t.getCodtipoCorte());%>">
                                              <% out.write(t.getDesctipoCorte()); %>
                               </option>
                            <%}%>                               
                        </select> 
                    </div>
                    </fieldset>
                     
                    <!-- STATUS -->
                    <fieldset>  
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="statusagenda" id="statusagenda1" width="100px">
                        <label class="form-check-label" for="statusagenda1">
                          Agendado
                        </label>
                    </div>
                    </fieldset>
                    
                    <fieldset> 
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="statusagenda" id="statusagenda2" checked>
                        <label class="form-check-label" for="statusagenda2">
                          Remarcado
                        </label>
                    </div>
                        
                    
                    
                    <!-- botões -->   
                    <div class="form-group col-md-2 h-5">
                        <input type="submit" value="Cadastrar" class="btn btn-primary " onclick="enviarDados()" />
                    </div>
                    <div class="form-group col-md-2 h-5">                                 
                        <input type="reset"  value="Cancelar" class="btn btn-danger"/>                        
                    </div>
             </div>
                    
                </form>
                
        <script>
            function enviarDados(){
                document.forms[0].submit();
            }        

        </script>    
    </body>
</html>