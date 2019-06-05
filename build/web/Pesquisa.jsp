<%-- 
    Document   : Pesquisa
    Created on : Jun 4, 2019, 11:33:27 PM
    Author     : hskodama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Imigrantes</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        
        <nav class="navbar nav">
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
        <div class="cont">
        <form method="GET" action="Pesquisa">
        <p><label for="login">Username:</label><input type="text" id="login" name="login"></p>
        <p><label for="pass">Password:</label><input type="password" id="pass" name="pass"></p>
        <p><input type="submit" value="Log me in"></p>
        </form>
        <section class="container cont" style="display: inline;">
        	<div style="margin-left: 30px;margin-bottom: 20px">
        		Pesquise sobre:
        	</div>

        	<div class="card" id="card_pessoa" onclick="expandir(id)">
        		Pessoa
        		<div class="form_card" id="form_pessoa" style="display: none;">
        			<ul class="info">
        				<div class="div_flex">
	                        <li >RNE: </li>
	                        <input type="text" name="RNE">
                    	</div>
                    	<div class="div_flex">
	                        <li >Nome: </li>
	                        <input type="text" name="Nome">
                        </div>
                        <div class="div_flex">
	                        <li >Nacionalidade:</li>
	                        <input type="text" name="Nacionalidade">
                        </div>
                        <div class="div_flex">
	                        <li >Estado Residente:</li>
	                        <select>
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
                    </ul>
        		</div>
        	</div>

        	<div class="card" id="card_visto" onclick="expandir(id)">
        		Visto
        		<div class="form_card" id="form_visto" style='display: none'>
        			<ul class="info">
        				<div class="div_flex">
	                        <li >RNE: </li>
	                        <input type="text" name="RNE">
                    	</div>
                    	<div class="div_flex">
	                        <li >Classificação: </li>
	                        <select>
	                        	<option value=''>Selecione</option>
	                        	<option value='Diplomatico'>Diplomatico</option>
	                        	<option value='Oficial'>Oficial</option>
	                        	<option value='Cortesia'>Cortesia</option>
	                        	<option value='Turista'>Turista</option>
	                        	<option value='Trânsito'>Trânsito</option>
	                        	<option value='Negócios'>Negócios</option>
	                        	<option value='Permanente'>Permanente</option>
	                        	<option value='Temporário'>Temporário</option>
	                        </select>
                        </div>
                    </ul>
        		</div>
        	</div>
        	<div class="linha">
        	</div>

        </section>
        </div>
        <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
        <script language="javascript" type="text/javascript">
        	function expandir(elemento){
        		var div = document.getElementById(elemento);
        		div.style.width="50%";
        		div.style.paddingTop="5px";
        		if(elemento == "card_pessoa")
				{
					document.getElementById("form_pessoa").style.display="flex";
					document.getElementById("form_visto").style.display="none";
					document.getElementById("card_visto").style = "card";
				}
				else
				{
					document.getElementById("form_visto").style.display="flex";
					document.getElementById("form_pessoa").style.display="none";
					document.getElementById("card_pessoa").style = "card";
				}

        	}
        </script>
    </body>
</html>