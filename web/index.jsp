<%-- 
    Document   : index
    Created on : Jun 4, 2019, 11:27:23 PM
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
                <li><a class="active" href="index.jsp">Home</a></li>
                <li><a class="nav-link" href="Pessoas.jsp">Pessoas</a></li>
                <li><a class="nav-link" href="Vistos.jsp">Vistos</a></li>
                <li><a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a></li>
                <li><a class="nav-link" href="Pesquisa.jsp">Pesquisas</a></li>
                <li><a class="nav-link" href="Visto_Pessoa.jsp">Visualização</a></li>
            </ul>
        </nav>
        
        <div id="Intro">
            <h1 class="titulo">Cadastro de Estrangeiros</h1>
        </div>
        
        <div class="Pessoas" id="imagemPessoa">
            <h2>Visualize os seus e demais cadastros</h2>
            <img src="https://images.unsplash.com/photo-1457694587812-e8bf29a43845?ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80" alt="Image Example" style="Width:60%;height:400px">
            <p>1,000,000 +</p>
            <h3>Cadastros totais de pessoas</h3>
        </div>
        
        <div class="Tipo_Visto" id="imagemVisto">
            <h2>10+ Tipos de Visto</h2>
            <h3>Consulte os detalhes, limites estipulados e a descrição dos vistos</h3>
            <img src="https://images.unsplash.com/photo-1532188142562-df556b861e6a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" alt="Image Example" style="Width:60%;height:400px">
        </div>
        
        <div class="Mapas" id="imagemMapa">
            <h2>Mapas e Gráficos</h2>
            <h3 class='Mapax_Texto'>Disponibilização de diversos mapas informativos, como a concentração de imigrantes em dado estado, localização de vistos expirados, diferença no tipo de visto, etc.</h3>
            <img src="https://images.unsplash.com/photo-1528707775707-2201621ab051?ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80" alt="Image Example" style="Width:60%;height:400px">
        </div>
        
    	<script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
    </body>
</html>

