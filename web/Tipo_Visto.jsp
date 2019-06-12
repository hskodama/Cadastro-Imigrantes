<%-- 
    Document   : Tipo_Visto
    Created on : Jun 4, 2019, 11:30:48 PM
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
        <nav class="navbar nav sticky-top">
            <ul>
                <li><a class="nav-link" href="index.jsp">Home</a></li>
                <li><a class="nav-link" href="Pessoas.jsp">Pessoas</a></li>
                <li><a class="nav-link" href="Vistos.jsp">Vistos</a></li>
                <li><a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a></li>
                <li><a class="nav-link" href="Pesquisa.jsp">Pesquisas</a></li>
                <li><a class="nav-link" href="Visualizacao.jsp">Visualização</a></li>
            </ul>
        </nav>       
    
        <div class="cont">
            <div class="tipo_margin">
                <button class="collapsible">Visto de Transporte</button>
                <div class="content">
                    <h4>Descrição:</h4>
                    <p>&emsp;Destina-se a estrangeiros de passagem pelo Brasil, com destino a outro país. Através deste é permitida ao viajante estrangeiro ausentar-se da área de trânsito do aeroporto. Permite um único ingresso no território brasileiro de no máximo 10 ( dez dias ) improrrogáveis.</p>
                    <h4>Tempo limite</h4>
                    <p>&emsp;10 dias</p>
                </div>
            </div>

            <div class="tipo_margin">
            <button class="collapsible">Visto de Turismo</button>
                <div class="content">
                  <h4>Descrição:</h4>
                  <p>&emsp;Este visto não apresenta finalidade migratória. Destina-se a estadias com caráter apenas de visita ou recreativo. Autoriza a estada em território nacional por no máximo 90 (noventa) dias, podendo ser prorrogável por uma única vez, por igual período. Este pedido de prorrogação deve ser encaminhado pessoalmente ao Departamento de Polícia Federal, antes do vencimento do prazo de validade do visto concedido no exterior.</p>
                  <h4>Tempo limite</h4>
                  <p>&emsp;90 dias</p>
                </div>
            </div>

            <div class="tipo_margin">
                <button class="collapsible">Visto de Transporte</button>
                <div class="content">
                    <div class="tipo_margin_aninhado">
                        <button class="collapsible">Viagem Cultural ou Missão de Estudos</button>
                          <div class="content">
                              <h4>Descrição:</h4>
                              <p>&emsp;Destina-se a cientistas e pesquisadores de temas específicos. Possui validade de até 2 anos, com possibilidade de prorrogar-se por igual período, desde que apresente os mesmos requisitos para o visto inicial.</p>
                              <h4>Tempo limite</h4>
                              <p>&emsp;730 dias</p>
                          </div>
                    </div>

                    <div class="tipo_margin_aninhado">
                        <button class="collapsible">Viagem de Negócios</button>
                          <div class="content">
                              <h4>Descrição:</h4>
                              <p>&emsp;Destinado aos profissionais que vão ao Brasil somente a negócios, sem a intenção de imigrar. Sua validade pode ser de até 5 anos, variável de acordo com a reciprocidade com o país de nacionalidade do portador. Entretanto permite a estada por apenas 90 (noventa) dias, podendo ser prorrogada uma vez por igual período. A prorrogação deste visto deverá ser requerida pessoalmente junto ao Departamento da Policia Federal, antes de seu vencimento.</p>
                              <h4>Tempo limite:</h4>
                              <p>&emsp;1825 dias</p>
                          </div>
                    </div>

                    <div class="tipo_margin_aninhado">
                        <button class="collapsible">Artistas e Desportistas</button>
                          <div class="content">
                            <h4>Descrição:</h4>
                            <p>&emsp;Este visto é concedido a artistas e desportistas com viagem ao Brasil para participar de eventos relacionados a área de atuação. A estadia é de no máximo 90 (noventa) dias por ano, podendo ser prolongada pelo mesmo período. Este deve ser solicitado junto ao Departamento de Policia Federal, antes do vencimento do primeiro visto. Importante lembrar que a instituição responsável pelo ingresso e estada do estrangeiro no Brasil, deve solicitar autorização prévia ao Ministério do Trabalho e Emprego.</p>
                            <h4>Tempo limite:</h4>
                            <p>&emsp;90 dias</p>
                          </div>
                    </div>

                    <div class="tipo_margin_aninhado">
                        <button class="collapsible">Estudante</button>
                          <div class="content">
                            <h4>Descrição:</h4>
                            <p>&emsp;Destina-se a estudantes de cursos regulares como ensino fundamental, médio, superior ou pós-graduação. Possui validade de até 1 ano, podendo ser prorrogado por igual período, por sucessivas vezes, enquanto durar o curso. O pedido de prorrogação deve ser solicitado junto ao Departamento de Policia Federal ou no Protocolo Geral do Ministério da Justiça, em até 30 (trinta) dias antes do término da estadia. Aos portadores de visto de estudante é vedado o exercício de atividade remunerada, sob pena de multa, notificação ou ainda deportação.</p>
                            <h4>Tempo limite:</h4>
                            <p>&emsp;365 dias</p>
                          </div>
                    </div>

                    <div class="tipo_margin_aninhado">
                        <button class="collapsible">Trabalho</button>
                          <div class="content">
                            <h4>Descrição:</h4>
                            <p>&emsp;Destina-se a estrangeiros que venham ao Brasil para exercer atividades laborais junto a empresas, com ou sem vínculo empregatício no País. A empresa responsável pelo ingresso e estadia do estrangeiro no Brasil, deve solicitar previamente junto ao Ministério do Trabalho e Emprego, a autorização de trabalho correspondente, observadas as Resoluções do Conselho Nacional de Imigração. (CNIg). O visto é concedido por um prazo máximo de 2 anos, podendo ser prorrogado por igual período e ainda ser transformado em permanente.</p>
                            <h4>Tempo limite:</h4>
                            <p>&emsp;730 dias</p>
                          </div>
                    </div>

                    <div class="tipo_margin_aninhado">
                        <button class="collapsible">Jornalista</button>
                          <div class="content">
                            <h4>Descrição:</h4>
                            <p>&emsp;Destina-se a jornalistas remunerados por empresas estrangeiras. O visto autoriza a estadia por no máximo 4 (quatro)anos, podendo ser prorrogada por igual período, mediante requerimento ao Ministério da Justiça, antes do vencimento do mesmo.</p>
                            <h4>Tempo limite:</h4>
                            <p>&emsp;1460 dias</p>
                          </div>
                    </div>

                    <div class="tipo_margin_aninhado">
                        <button class="collapsible">Missão Religiosa</button>
                          <div class="content">
                            <h4>Descrição:</h4>
                            <p>&emsp;Destina-se a aqueles que viajam ao Brasil com atribuições de ministro religioso ou membro de instituto de vida consagrada, de congregação ou ordem religiosa. Este visto pode ser concedido por um prazo máximo de até 1 (um) ano. Podendo ser ainda prorrogado por igual período, mediante requerimento ao Ministério da Justiça, antes do vencimento do visto. Admite transformação em visto permanente, por meio de requerimento endereçado da mesma forma ao Ministério da Justiça.</p>
                            <h4>Tempo limite:</h4>
                            <p>&emsp;365 dias</p>
                          </div>
                    </div>


                </div>
            </div>

            <div class="tipo_margin">
                <button class="collapsible">Visto Permanente</button>
                <div class="content">
                  <h4>Descrição:</h4>
                  <p>&emsp;O visto permanente tem finalidade imigratória sendo destinado aquele com intenção de fixar-se definitivamente no Brasil. É concedido por autoridade consular brasileira competente situada no pais de origem do requerente, amparado pela Lei 6.815/80, bem como pelas Resoluções do Conselho Nacional de Imigração – CNIg.</p>
                </div>
            </div>

            <div class="tipo_margin">
                <button class="collapsible">Visto Cortesia</button>
                <div class="content">
                    <h4>Descrição:</h4>
                    <p>&emsp;Este visto de cortesia pode ser concedido: aos empregados domésticos dos chefes de missão diplomática, funcionários diplomáticos e consulares acreditados junto ao Governo Brasileiro, autoridades estrangeiras em viagem não-oficial ao Brasil, respectivos dependentes (cônjuge ou prole) de portadores de visto oficial ou diplomático. Os filhos maiores de 18 anos ou até 24 anos, deverão comprovar a dependência econômica e condição de estudantes. O visto é válido por 90 dias e prorrogável por igual período. A solicitação desta prorrogação deve ser feita junto ao Ministério das Relações Exteriores.</p>
                    <h4>Tempo limite</h4>
                     <p>&emsp;90 dias</p>
                </div>
            </div>

            <div class="tipo_margin">
                <button class="collapsible">Visto Oficial</button>
                <div class="content">
                    <h4>Descrição:</h4>
                    <p>&emsp;O visto oficial é destinado a funcionários de organismos internacionais, embaixadas e consulados em missão oficial no Brasil desde que não possuam status de diplomata, bem como seus cônjuges e dependentes menores de 18 anos. A estadia é autorizada para até 2 (dois)anos ou pelo período de duração da missão, observando o princípio da reciprocidade. Estes vistos devem ser requeridos perante ao Ministério das Relações Exteriores.</p>
                    <h4>Tempo limite</h4>
                     <p>&emsp;730 dias</p>
                </div>
            </div>

        </div>
<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>
    </body>
    
</html>
