

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
        <nav class="navbar nav">
            <a class="nav-link" href="index.jsp">Home</a>
            <a class="nav-link" href="#">Pessoas</a>
            <a class="nav-link" href="#">Vistos</a>
            <a class="nav-link" href="#">Tipos de Vistos</a>
            <a class="nav-link" href="#">Pesquisas</a>
            <a class="nav-link" href="Visto_Pessoa.jsp">Vizualização</a> 
        </nav>
        <section class="container" id="Cont-Vis-Pess">
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
            <div class="item container" id="infoPessoa"><%-- Pessoa --%>
                <ul class="info">
                    <li >Nome: </li>
                    <li >Nome da Mãe: </li>
                    <li >Estado Residente:</li>
                    <li >Data de Expedição:</li>
                    <li >Orgão Emissor:</li>
                </ul>
                <div id="chaveIMG">
                </div>
                <div id="pessoaIMG">
                </div>
                <div id="chaveIMG" style="transform: rotateY(180deg);">
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
