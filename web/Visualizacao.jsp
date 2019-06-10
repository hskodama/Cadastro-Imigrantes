<%-- 
    Document   : Visualizacao
    Created on : 06/06/2019, 22:36:53
    Author     : Gabriel Peres de Andrade 726517
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tipo"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro de Imigrantes</title>
    <link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript">
      function visu(){
        $.post("Visualiza");
      }
    </script>   
    <script>
        google.load('visualization', '1', {
      'packages': ['geochart', 'table']
      });
      google.setOnLoadCallback(drawRegionsMap);
      
      function drawRegionsMap() {
        var data = google.visualization.arrayToDataTable([
        // Results For US States
        // State format must be "BR-**"
        // US represents region, while the ** section represents the individual state 
          ['State', 'Views'],
          ['BR-SP', 300],
          ['BR-PE', 300],
          ['BR-AM', 400]
        ]);
  
        var view = new google.visualization.DataView(data)
        view.setColumns([0, 1])
    
        var options = {
            region: 'BR',
            resolution: 'provinces',
            width: 556,
            height: 347
        };
    
        var chart = new google.visualization.GeoChart(
        document.getElementById('chart_div2'));
        chart.draw(data, options);
    
        var geochart = new google.visualization.GeoChart(
        document.getElementById('chart_div2'));
        var options = {
            region: 'BR',
            resolution: 'provinces',
            width: 700,
            height: 700,
            colorAxis: {
            colors: ['#acb2b9', '#2f3f4f']
            } // orange to blue 
        };
        geochart.draw(data, options);
    
      };
    </script>
    
  </head>

  <body onload="visu()">
        <nav class="navbar nav">
            <ul>
                <li><a class="nav-link" href="index.jsp">Home</a></li>
                <li><a class="nav-link" href="Pessoas.jsp">Pessoas</a></li>
                <li><a class="nav-link" href="Vistos.jsp">Vistos</a></li>
                <li><a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a></li>
                <li><a class="nav-link" href="Pesquisa.jsp">Pesquisas</a></li>
                <li><a class="active" href="Visualizacao.jsp">Visualização</a></li>
            </ul>
        </nav>
      
        
        <div class="cont">
            <h1 class='header_visu'>Quantidade de passaportes por tipo</h1>
        <!--Div that will hold the pie chart-->
        <div id="chart_div"></div>
        </div>
      
        
        <div class="cont header_visu">
            <h1 class='header_visu'>Mapa do Brasil: Número de pessoas por estado</h1>
<!--        Div that will hold the pie chart-->
            <div id="chart_div2" class='header_visu'></div>
        </div>

    <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>

    <script type="text/javascript">
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

         <%
            Vector array_aux_Tipo = (Vector) request.getAttribute("pesquisa_Tipo");
          %>
            alert(<%out.print(array_aux_Tipo);%>);
            <%
            if(array_aux_Tipo != null){
                Object[] aux = array_aux_Tipo.toArray(new Tipo[array_aux_Tipo.size()]);
                Tipo[] pesquisa_Tipo = Arrays.copyOf(aux, aux.length,Tipo[].class);
              }
            
        %>
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Tipo');
        data.addColumn('number', 'Quantidade');
        data.addRows([
          ['Transporte',                  1     ],
          ['Turismo',                     2     ],
          ['Permanente',                  5     ],
          ['Cortesia',                    6     ],
          ['Oficial',                     9     ],
          ['Cultural/Missão de Estudos',  2     ],
          ['Negócios',                    6     ],
          ['Artista/Desportistas',        7     ],
          ['Estudante',                   3     ],
          ['Trabalho',                    7     ],
          ['Jornalista',                  4     ],
          ['Religioso',                   7     ]
        ]);

        // Set chart options
        var options = {
                       'width':900,
                       'height':900,
                       };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </body>
</html>
