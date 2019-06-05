<%-- 
    Document   : Vistos
    Created on : Jun 4, 2019, 11:29:55 PM
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
                    <a class="active" href="Vistos.jsp">Vistos</a>
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
        <div class="cont">
            <div id="tabela">
                <table id="pessoas_tab" class="table table-stripped table-bordered" style="width: 90%">
                    <thead>
                        <tr>
                            <th>RNE</th>
                            <th>Classificação</th>
                            <th>Expedição</th>
                            <th>Expiração</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>XXX.XXX.XXX-XX</td>
                            <td>Turismo</td>
                            <td>DD/MM/AAAA</td>
                            <td>DD/MM/AAAA</td>
                        </tr>
                        <tr>
                            <td>XXX.XXX.XXX-XX</td>
                            <td>Estudante</td>
                            <td>DD/MM/AAAA</td>
                            <td>DD/MM/AAAA</td>
                        </tr>
                        <tr>
                            <td>XXX.XXX.XXX-XX</td>
                            <td>Trabalho</td>
                            <td>DD/MM/AAAA</td>
                            <td>DD/MM/AAAA</td>
                        </tr>
                        <tr>
                            <td>XXX.XXX.XXX-XX</td>
                            <td>Diplomático</td>
                            <td>DD/MM/AAAA</td>
                            <td>DD/MM/AAAA</td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
    	<script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
    </body>

