<%-- 
    Document   : Pessoa
    Created on : Jun 4, 2019, 11:31:10 PM
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
                    <a class="active" href="Pessoas.jsp">Pessoas</a>
                </li>
                <li>
                    <a class="nav-link" href="Vistos.jsp">Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Pesquisa.jsp">Pesquisas</a>
                </li>
                <li>
                    <a class="nav-link" href="Visto_Pessoa.jsp">Visualização</a> 
                </li>
            </ul>
        </nav>

        <div id="tabela">
            <table id="pessoas_tab" class="table table-stripped table-bordered" style="width: 90%">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>RNE</th>
                        <th>Nacionalidade</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Luca Fioreto</td>
                        <td>XXX.XXX.XXX-XX</td>
                        <td>Itália</td>
                        <td>São Paulo</td>
                    </tr>
                    <tr>
                        <td>Maria Antonia</td>
                        <td>XXX.XXX.XXX-XX</td>
                        <td>Portugal</td>
                        <td>Minas Gerais</td>
                    </tr>
                    <tr>
                        <td>Helga Hofstader</td>
                        <td>XXX.XXX.XXX-XX</td>
                        <td>Alemanha</td>
                        <td>Rio Grande do Sul</td>
                    </tr>
                    <tr>
                        <td>Antoine Pavel</td>
                        <td>XXX.XXX.XXX-XX</td>
                        <td>França</td>
                        <td>Amazonas</td>
                    </tr>
                </tbody>
            </table>
        </div>

        
    	<script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
    </body>
</html>

