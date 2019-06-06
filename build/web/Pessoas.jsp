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
        
        <link rel="stylesheet" href="http://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="http://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        
        <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
        
        <script>
            $(document).ready( function () {
                $('#table_pessoas').DataTable();
            } );
        </script>

    </head>
    <body>
        <nav class="navbar nav sticky-top">
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
                        </tr><tr>
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
                        </tr><tr>
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
                        </tr><tr>
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
                        </tr><tr>
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
                        </tr><tr>
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
                        </tr><tr>
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
                        </tr><tr>
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
        </div>
        
    	<script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>

    </body>
</html>

