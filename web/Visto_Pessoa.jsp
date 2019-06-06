<%-- 
    Document   : Visto_Pessoa
    Created on : Jun 4, 2019, 11:30:28 PM
    Author     : hskodama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Imigrantes</title>
        <link rel="stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
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
                    <a class="nav-link" href="Pesquisa.jsp">Pesquisas</a>
                </li>
                <li>
                    <a class="active" href="Visto_Pessoa.jsp">Visualização</a> 
                </li>
            </ul>
        </nav>
        <section class="container cont w-100 p-3">
            <div class="item" style="width: 33%;"><%-- Visto --%>
                <section class="item" id="visto">
                    <div id="foto">
                    </div>
                    <ul class="info">
                        <li >RNE: </li>
                        <li >Classificação: </li>
                        <li >Orgão Emissor:</li>
                        <li >Data de Expedição:</li>
                        <li >Data de Expiração:</li>
                    </ul>
                    <div class="container">
                        <div style="width: 79%">
                        </div>
                        <h2 id="text-visto">
                            Visto
                        </h2>
                    </div>


                </section>
            </div>
            <div class="item container w-100 p-3" id="infoPessoa"><%-- Pessoa --%>
                <ul class="info">
                    <li >Nome: </li>
                    <li >Nome da Mãe: </li>
                    <li >Estado Residente:</li>
                    <li >Data de Expedição:</li>
                    <li >Orgão Emissor:</li>
                </ul>
                <div class="container center">
                    <div id="chaveIMG"style="transform: rotateY(180deg); ">
                    </div>
                    <div id="pessoaIMG">
                    </div>
                    <div id="chaveIMG">
                    </div>
                </div>
                <ul class="info">
                    <li >RNE: </li>
                    <li >Nome do Pai: </li>
                    <li >Nacionalidade:</li>
                    <li >Passaporte:</li>
                    <li >Data de Expiração:</li>
                </ul>
            </div>
        </section>
        <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
    </body>
</html>

