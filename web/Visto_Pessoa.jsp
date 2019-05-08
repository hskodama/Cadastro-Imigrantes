

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Imigrantes</title>
        <link rel="stylesheet" type="text/css" href="style2.css">
    </head>
    <body>
        <div class="nav">
            <ul>
                <li class="Home"><a href="index.jsp">Home</a></li>
                <li class="Pessoas"><a href="#">Pessoas</a></li>
                <li class="Vistos"><a href="#">Vistos</a></li>
                <li class="TipoVistos"><a href="#">Tipo de Vistos</a></li>
                <li class="Pesquisas"><a href="#">Pesquisas</a></li>
                <li class="Visualizacao"><a href="#">Visualização</a></li>
            </ul>
        </div>
        <section class="container">
            <div class="item"><%-- Visto --%>
                <section id="visto">
                    <div id="foto">
                        
                    </div>
                    <ul class="info">
                        <li >RNE: </li>
                        <li >Classificação: </li>
                        <li >Orgão Emissor:</li>
                        <li >Data de Expedição:</li>
                        <li >Data de Expiração:</li>
                    </ul>
                </section>
            </div>
            <div class="item"><%-- Pessoa --%>
            </div>
        </section>
    </body>
</html>
