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
    	                        	<option value='vitra'>Transporte</option>
    	                        	<option value='vitur'>Turismo</option>
    	                        	<option value='viper'>Permanente</option>
    	                        	<option value='vicor'>Cortesia</option>
    	                        	<option value='visof"'>Oficial</option>
    	                        	<option value='vrt_1'>Cultural/Missão de Estudos</option>
    	                        	<option value='vrt_2'>Negócios</option>
    	                        	<option value='vrt_3'>Artista/Desportistas</option>
                                    <option value='vrt_4'>Estudante</option>
                                    <option value='vrt_5'>Trabalho</option>
                                    <option value='vrt_6'>Jornalista</option>
                                    <option value='vrt_7'>Religioso</option>
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
                                    <option value='vitra'>Transporte</option>
                                    <option value='vitur'>Turismo</option>
                                    <option value='viper'>Permanente</option>
                                    <option value='vicor'>Cortesia</option>
                                    <option value='visof"'>Oficial</option>
                                    <option value='vrt_1'>Cultural/Missão de Estudos</option>
                                    <option value='vrt_2'>Negócios</option>
                                    <option value='vrt_3'>Artista/Desportistas</option>
                                    <option value='vrt_4'>Estudante</option>
                                    <option value='vrt_5'>Trabalho</option>
                                    <option value='vrt_6'>Jornalista</option>
                                    <option value='vrt_7'>Religioso</option>
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
        
        <table border="2">
            <tr>
                <td>RNE</td>
                <td>Nome</td>
                <td>Nacionalidade</td>
                <td>Estado</td>
            </tr>
            <%
//                Vector array_aux = (Vector) request.getAttribute("pesquisa_pessoa"); 
//                Object[] pesquisa_pessoa = array_aux.toArray(new Pessoa[array_aux.size()]);
//                
//                Pessoa[] teste = Arrays.copyOf(pesquisa_pessoa, pesquisa_pessoa.length, Pessoa[].class);
//                                
                for(int i = 0 ; i < 10 ; i++){

            %>

            <tr><td><%out.println("1");%></td></tr>


            <%
                }
            %>
        </table>  
        
        
              
        
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