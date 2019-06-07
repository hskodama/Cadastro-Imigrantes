<%-- 
    Document   : Visualizacao
    Created on : 06/06/2019, 22:36:53
    Author     : Gabriel Peres de Andrade 726517
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro de Imigrantes</title>
    <link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Mushrooms', 3],
          ['Onions', 1],
          ['Olives', 1],
          ['Zucchini', 1],
          ['Pepperoni', 2]
        ]);

        // Set chart options
        var options = {'title':'How Much Pizza I Ate Last Night',
                       'width':1400,
                       'height':1300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>

  <body>
        <nav class="navbar nav">
            <ul>
                <li><a class="active" href="index.jsp">Home</a></li>
                <li><a class="nav-link" href="Pessoas.jsp">Pessoas</a></li>
                <li><a class="nav-link" href="Vistos.jsp">Vistos</a></li>
                <li><a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a></li>
                <li><a class="nav-link" href="Pesquisa.jsp">Pesquisas</a></li>
                <li><a class="nav-link" href="Visualizacao.jsp">Visualização</a></li>
            </ul>
        </nav>
        <div class="cont">
        <!--Div that will hold the pie chart-->
            <div id="chart_div"></div>
        </div>
    <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
  </body>
</html>
