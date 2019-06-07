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
      google.visualization.events.addListener(geochart, 'regionClick', function (eventData) {
          // maybe you want to change the data table here...
          options['region'] = eventData.region;
          options['resolution'] = 'provinces';
          options['displayMode'] = 'markers';
  
          var data = google.visualization.arrayToDataTable([
          // Add Results for Individual State
          // Format needs to match what is below so that it locates the correct position
          // Additional information can be added to array
          // Uses first value in 2nd column to determine scale for markers
          // Use AJAX to load this on regionClick
          ['City', 'Views'],
              ['Recife, PE', 200],
              ['Manaus, AM', 300],
              ['Santos, SP', 400],
              ['Campinas, SP', 400],
  
          ]);
  
          geochart.draw(data, options);
          var table = new google.visualization.Table(document.getElementById('table'));
          table.draw(data, null);
  
      });
      geochart.draw(data, options);
  
  };
    </script>
    
  </head>

  <body>
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
        <!--Div that will hold the pie chart-->
            <div id="chart_div"></div>
        </div>
      
        <div class="cont">
<!--        Div that will hold the pie chart-->
            <div id="chart_div2"></div>
        </div>
    <script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
  </body>
</html>
