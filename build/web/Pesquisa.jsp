<%-- 
    Document   : Pesquisa
    Created on : Jun 4, 2019, 11:33:27 PM
    Author     : hskodama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pessoa"%>
<%@page import="model.Pessoa_c1"%>
<%@page import="model.Pessoa_c2"%>
<%@page import="model.Visto"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Imigrantes</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        
        <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
        
        <script>
            $(document).ready( function () {
                $('#table_pessoas').DataTable();
            } );
            
            $('table').on('click', 'tr', function() {
                //your stuff 
                window.location.replace("http://stackoverflow.com");
            });
        </script>
    </head>
    <body>
        
        <nav class="navbar nav sticky-top">
            <ul>
                <li>
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li>
                    <a class="nav-link" href="Pessoas.jsp">Pessoas</a>
                </li>
                <li>
                    <a class="nav-link" href="Vistos.jsp">Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a>
                </li>
                <li>
                    <a class="active" href="Pesquisa.jsp">Pesquisas</a>
                </li>
                <li>
                    <a class="nav-link" href="Visto_Pessoa.jsp">Visualização</a> 
                </li>
            </ul>
        </nav>
        <section class="container cont" id="sessao" style="display: inline;">
        	<h4 style="margin-left: 30px;margin-bottom: 20px">
        		Pesquise sobre:
        	</h4>
            <div class="tipo_margin">
            	<form method="POST" action="Pesquisa"class="collapsible" id="card_pessoa" onclick="expandir(id)">
            		Pessoa
            		<div class="form_card" id="form_pessoa" style="display: none;">
            			<ul class="info">
            				<div class="div_flex">
    	                        <li >RNE: </li>
    	                        <input pattern="[a-zA-Z0-9]{1,10}$" type="text" name="pessoa_rne">
                        	</div>
                        	<div class="div_flex">
    	                        <li >Nome: </li>
    	                        <input pattern="^[a-zA-z]{1,40}$" type="text" name="pessoa_nome">
                            </div>
                            <div class="div_flex">
    	                        <li >Nacionalidade:</li>
    	                        <input pattern="^[a-zA-z]{1,3}$" type="text" name="pessoa_nac">
                            </div>
                            <div class="div_flex">
    	                        <li >Estado Residente:</li>
    	                        <select name="pessoa_est">
    	                        	<option value=''>Selecione</option>
    	                        	<option value='AC'>Acre</option>
    	                        	<option value='AL'>Alagoas</option>
    	                        	<option value='AP'>Amapá</option>
    	                        	<option value='AM'>Amazonas</option>
    	                        	<option value='BA'>Bahia</option>
    	                        	<option value='CE'>Ceará</option>
    	                        	<option value='DF'>Distrito Federal</option>
    	                        	<option value='ES'>Espírito Santo</option>
    	                        	<option value='GO'>Goiás</option>
    	                        	<option value='MA'>Maranhão</option>
    	                        	<option value='MT'>Mato Grosso</option>
    	                        	<option value='MS'>Mato Grosso do Sul</option>
    	                        	<option value='MG'>Minas Gerais</option>
    	                        	<option value='PA'>Pará</option>
    	                        	<option value='PB'>Paraíba</option>
    	                        	<option value='PR'>Paraná</option>
    	                        	<option value='PE'>Pernambuco</option>
    	                        	<option value='PI'>Piauí</option>
    	                        	<option value='RJ'>Rio de Janeiro</option>
    	                        	<option value='RN'>Rio Grande do Norte</option>
    	                        	<option value='RS'>Rio Grande do Sul</option>
    	                        	<option value='RO'>Rondônia</option>
    	                        	<option value='RR'>Roraima</option>
    	                        	<option value='SC'>Santa Catarina</option>
    	                        	<option value='SP'>São Paulo</option>
    	                        	<option value='SE'>Sergipe</option>
    	                        	<option value='TO'>Tocantins</option>
    	                        </select>
                        	</div>
                            <button style="float: right">
                                Enviar
                            </button>
                        </ul>
            		</div>
            	</form>
            </div>
            <div class="tipo_margin">
            	<form method="POST" action="Pesquisa" class="collapsible" id="card_visto" onclick="expandir(id)">
            		Visto
            		<div class="form_card" id="form_visto" style='display: none'>
            			<ul class="info">
            				<div class="div_flex">
    	                        <li >RNE: </li>
    	                        <input pattern="[a-zA-Z0-9]{1,10}$" type="text" name="visto_rne">
                        	</div>
                        	<div class="div_flex">
    	                        <li >Classificação: </li>
    	                        <select name="visto_class">
    	                        	<option value=''>Selecione</option>
    	                        	<option value='1'>Transporte</option>
    	                        	<option value='2'>Turismo</option>
    	                        	<option value='3'>Permanente</option>
    	                        	<option value='4'>Cortesia</option>
    	                        	<option value='5"'>Oficial</option>
    	                        	<option value='6'>Cultural/Missão de Estudos</option>
    	                        	<option value='7'>Negócios</option>
    	                        	<option value='8'>Artista/Desportistas</option>
                                 <option value='9'>Estudante</option>
                                 <option value='10'>Trabalho</option>
                                 <option value='11'>Jornalista</option>
                                 <option value='12'>Religioso</option>
    	                        </select>
                            </div>
                            <button style="float: right">
                                Enviar
                            </button>
                        </ul>
            		</div>
            	</form>
            </div>
            <div class="tipo_margin">
                <form method="POST" action="Pesquisa" class="collapsible" id="card_avacado1" onclick="expandir(id)">
                    Pesquisa Avançada 1: Busca por Nome e Tipo de Visto
                    <div class="form_card" id="form_avanc1" style='display: none'>
                        
                        <ul class="info">
                            <div class="div_flex">
                                <li >Nome: </li>
                                <input required="required" pattern="[a-zA-Z0-9]{1,10}$" type="text" name="c1_nome">
                            </div>
                            <div class="div_flex">
                                <li >Classificação: </li>
                                <select required="required" name="c1_class">
                                    <option value=''>Selecione</option>
                                    <option value='1'>Transporte</option>
                                    <option value='2'>Turismo</option>
                                    <option value='10'>Permanente</option>
                                    <option value='11'>Cortesia</option>
                                    <option value='12"'>Oficial</option>
                                    <option value='3'>Cultural/Missão de Estudos</option>
                                    <option value='4'>Negócios</option>
                                    <option value='5'>Artista/Desportistas</option>
                                    <option value='6'>Estudante</option>
                                    <option value='7'>Trabalho</option>
                                    <option value='8'>Jornalista</option>
                                    <option value='9'>Religioso</option>
                                </select>
                            </div>
                            <button style="float: right">
                                Enviar
                            </button>
                        </ul>
                    </div>
                </form>
            </div>
            <div class="tipo_margin">
                <form method="POST" action="Pesquisa" class="collapsible" id="card_avancado2" onclick="expandir(id)">
                    Pesquisa Avançada 2: Busca por Data de Expiração e Estado
                    <div class="form_card" id="form_avanc2" style='display: none'>
                        <ul class="info">
                            <div class="div_flex">
                                <li >Data: </li>
                                <input required="required" type="date" name="c2_data">
                            </div>
                            <div class="div_flex">
                                <li >Estado: </li>
                                <select required="required" name="c2_est">
                                 <option value=''>Selecione</option>
    	                        	<option value='AC'>Acre</option>
    	                        	<option value='AL'>Alagoas</option>
    	                        	<option value='AP'>Amapá</option>
    	                        	<option value='AM'>Amazonas</option>
    	                        	<option value='BA'>BA</option>
    	                        	<option value='CE'>Ceará</option>
    	                        	<option value='DF'>Distrito Federal</option>
    	                        	<option value='ES'>Espírito Santo</option>
    	                        	<option value='GO'>Goiás</option>
    	                        	<option value='MA'>Maranhão</option>
    	                        	<option value='MT'>Mato Grosso</option>
    	                        	<option value='MS'>Mato Grosso do Sul</option>
    	                        	<option value='MG'>Minas Gerais</option>
    	                        	<option value='PA'>Pará</option>
    	                        	<option value='PB'>Paraíba</option>
    	                        	<option value='PR'>Paraná</option>
    	                        	<option value='PE'>Pernambuco</option>
    	                        	<option value='PI'>Piauí</option>
    	                        	<option value='RJ'>Rio de Janeiro</option>
    	                        	<option value='RN'>Rio Grande do Norte</option>
    	                        	<option value='RS'>Rio Grande do Sul</option>
    	                        	<option value='RO'>Rondônia</option>
    	                        	<option value='RR'>Roraima</option>
    	                        	<option value='SC'>Santa Catarina</option>
    	                        	<option value='SP'>São Paulo</option>
    	                        	<option value='SE'>Sergipe</option>
    	                        	<option value='TO'>Tocantins</option>
                                </select>
                            </div>
                            <button style="float: right">
                                Enviar
                            </button>
                        </ul>
                    </div>
                </form>
            </div>
        	<div class="linha">
        	</div>
        </section>
        
        
<!--    Tabela de Pessoa -->
        <%
            Vector array_aux_pessoa = (Vector) request.getAttribute("pesquisa_pessoa"); 
            if(array_aux_pessoa != null){
                Object[] aux = array_aux_pessoa.toArray(new Pessoa[array_aux_pessoa.size()]);
                Pessoa[] pesquisa_pessoa = Arrays.copyOf(aux, aux.length, Pessoa[].class);
        %>
                <div class="cont">
                    <div id="tabela">
                        <table id="table_pessoas" class="display hover table table-striped table-bordered table-fixed" style="width: 90%">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>RNE</th>
                                    <th>Nacionalidade</th>
                                    <th>Estado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for(int i = 0 ; i < array_aux_pessoa.size() ; i++){
                                %>
                                    <tr>
                                        <td><%out.print(pesquisa_pessoa[i].getRne());%></td>
                                        <td><%out.print(pesquisa_pessoa[i].getNome());%></td>
                                        <td><%out.print(pesquisa_pessoa[i].getNacionalidade());%></td>
                                        <td><%out.print(pesquisa_pessoa[i].getEstado());%></td>
                                    </tr>
                                <%
                                    }
                                %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>    
        <%          
            }
        %>
        
<!--    Tabela de Visto-->
        <%
            Vector array_aux_visto = (Vector) request.getAttribute("pesquisa_visto"); 
            if(array_aux_visto != null){
                Object[] aux = array_aux_visto.toArray(new Visto[array_aux_visto.size()]);
                Visto[] pesquisa_visto = Arrays.copyOf(aux, aux.length, Visto[].class);
        %>
                <div class="cont">
                    <div id="tabela">
                        <table id="table_pessoas" class="display hover table table-striped table-bordered table-fixed" style="width: 90%">
                            <thead>
                                <tr>
                                    <th>RNE</th>
                                    <th>Classificação</th>
                                    <th>Data de Expedição</th>
                                    <th>Data de Expiração</th>
                                    <th>Data de Entrada</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for(int i = 0 ; i < array_aux_visto.size() ; i++){
                                %>
                                    <tr>
                                        <td><%out.print(pesquisa_visto[i].getRne());%></td>
                                        <td><%out.print(pesquisa_visto[i].getClassificacao());%></td>
                                        <td><%out.print(pesquisa_visto[i].getDataExped());%></td>
                                        <td><%out.print(pesquisa_visto[i].getDataExpir());%></td>
                                        <td><%out.print(pesquisa_visto[i].getDataEntr());%></td>
                                    </tr>
                                <%
                                    }
                                %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>    
        <%          
            }
        %>
        
<!--    Tabela consulta avancada 1-->
        <%
            Vector array_aux_c1 = (Vector) request.getAttribute("pesquisa_c1"); 
            if(array_aux_c1 != null){
                Object[] aux = array_aux_c1.toArray(new Pessoa_c1[array_aux_c1.size()]);
                Pessoa_c1[] pesquisa_c1 = Arrays.copyOf(aux, aux.length, Pessoa_c1[].class);
        %>
                <div class="cont">
                    <div id="tabela">
                        <table id="table_pessoas" class="display hover table table-striped table-bordered table-fixed" style="width: 90%">
                            <thead>
                                <tr>
                                    <th>RNE</th>
                                    <th>Nome</th>
                                    <th>Classificação</th>
                                    <th>Data de Expedição</th>
                                    <th>Data de Expiração</th>
                                    <th>Estado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for(int i = 0 ; i < array_aux_c1.size() ; i++){
                                %>
                                    <tr>
                                        <td><%out.print(pesquisa_c1[i].getRne());%></td>
                                        <td><%out.print(pesquisa_c1[i].getNome());%></td>
                                        <td><%out.print(pesquisa_c1[i].getClassificacao());%></td>
                                        <td><%out.print(pesquisa_c1[i].getDataExped());%></td>
                                        <td><%out.print(pesquisa_c1[i].getDataExpir());%></td>
                                        <td><%out.print(pesquisa_c1[i].getEstado());%></td>
                                    </tr>
                                <%
                                    }
                                %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>    
        <%          
            }
        %>
              
<!--    Tabela consulta avancada 2-->
        <%
            Vector array_aux_c2 = (Vector) request.getAttribute("pesquisa_c2"); 
            if(array_aux_c2 != null){
                Object[] aux = array_aux_c2.toArray(new Pessoa_c2[array_aux_c2.size()]);
                Pessoa_c2[] pesquisa_c2 = Arrays.copyOf(aux, aux.length, Pessoa_c2[].class);
        %>
                <div class="cont">
                    <div id="tabela">
                        <table id="table_pessoas" class="display hover table table-striped table-bordered table-fixed" style="width: 90%">
                            <thead>
                                <tr>
                                    <th>RNE</th>
                                    <th>Nome</th>
                                    <th>Nacionalidade</th>
                                    <th>Data de Expedição</th>
                                    <th>Data de Expiração</th>
                                    <th>Tempo Limite (Dias)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for(int i = 0 ; i < array_aux_c2.size() ; i++){
                                %>
                                    <tr>
                                        <td><%out.print(pesquisa_c2[i].getRne());%></td>
                                        <td><%out.print(pesquisa_c2[i].getNome());%></td>
                                        <td><%out.print(pesquisa_c2[i].getNacionalidade());%></td>
                                        <td><%out.print(pesquisa_c2[i].getDataExped());%></td>
                                        <td><%out.print(pesquisa_c2[i].getDataExpir());%></td>
                                        <td><%out.print(pesquisa_c2[i].getTempoLimite());%></td>
                                    </tr>
                                <%
                                    }
                                %>
                                
                            </tbody>
                        </table>
                    </div>
                </div>    
        <%          
            }
        %>
        
        
        <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
        <script language="javascript" type="text/javascript">
            function expandir(elemento){
                var div = document.getElementById(elemento);

                var section = document.getElementById("sessao");

                var card = section.getElementsByClassName("form_card");
                var collap = section.getElementsByClassName("collapsible");
                var i;
                for (i = 0 ; i < 4 ; i++) {
                    if(collap[i].classList.contains("show")==true)
                        collap[i].classList.toggle("show");
                    card[i].style.display = "none";
                }
                div.classList.toggle("show");

                if(elemento == "card_pessoa")
                    document.getElementById("form_pessoa").style.display="flex";
                else
                    if(elemento == "card_visto")
                        document.getElementById("form_visto").style.display="flex";
                    else
                        if(elemento == "card_avacado1")
                            document.getElementById("form_avanc1").style.display="flex";
                        else
                            document.getElementById("form_avanc2").style.display="flex";
            }
            
            function validarDados() {
                if(document.dados.RNE.length != 10) {
                    alert("RNE inválido.");
                    document.dados.RNE.focus();
                    return false;
                }
            }
            
        </script>

    </body>
</html>