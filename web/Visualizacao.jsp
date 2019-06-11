<%-- 
    Document   : Visualizacao
    Created on : 06/06/2019, 22:36:53
    Author     : Gabriel Peres de Andrade 726517
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tipo"%>
<%@page import="model.Estado"%>
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
        //$.post("Visualiza");
        var postFormStr = "<form method='POST' action='Visualiza'>\n";
        postFormStr += "</form>";
        var formElement = $(postFormStr);
        $('body').append(formElement);
        $(formElement).submit();  
      }
      function carrega(){
        <%if (request.getAttribute("pesquisa_Tipo")== null){%>
          visu();
        <%}%>
      }
    </script>       
  </head>

  <body onload="carrega()">
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
              <h3 class='header_visu'>Quantidade de passaportes por tipo</h3>
              <div id="chart_div" style="width: 100%; height: 500px;"></div>

              <h3 class='header_visu'>Mapa do Brasil: Número de pessoas por estado</h3>
              <div id="chart_div2" style="width: 100%; height: 500px;padding-bottom: : 20px;"></div>
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
            if(array_aux_Tipo != null){
                Object[] aux = array_aux_Tipo.toArray(new Tipo[array_aux_Tipo.size()]);
                Tipo[] pesquisa_Tipo = Arrays.copyOf(aux, aux.length,Tipo[].class);      
        %>
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Tipo');
        data.addColumn('number', 'Quantidade');
        data.addRows([
          ['<%out.print(pesquisa_Tipo[0].getTipo());%> ', <%out.print(pesquisa_Tipo[0].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[1].getTipo());%> ', <%out.print(pesquisa_Tipo[1].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[2].getTipo());%> ', <%out.print(pesquisa_Tipo[2].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[3].getTipo());%> ', <%out.print(pesquisa_Tipo[3].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[4].getTipo());%> ', <%out.print(pesquisa_Tipo[4].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[5].getTipo());%> ', <%out.print(pesquisa_Tipo[5].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[6].getTipo());%> ', <%out.print(pesquisa_Tipo[6].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[7].getTipo());%> ', <%out.print(pesquisa_Tipo[7].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[8].getTipo());%> ', <%out.print(pesquisa_Tipo[8].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[9].getTipo());%> ', <%out.print(pesquisa_Tipo[9].getQuantidade());%>     ],
          ['<%out.print(pesquisa_Tipo[10].getTipo());%>', <%out.print(pesquisa_Tipo[10].getQuantidade());%>    ],
          ['<%out.print(pesquisa_Tipo[11].getTipo());%>', <%out.print(pesquisa_Tipo[11].getQuantidade());%>    ]
        ]);   
        // Set chart options
        var options = {
                      // is3D: true,
                      //backgroundColor:'DFD9FF', 
                      pieHole: 0.5,
                       };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      <%}%>
      }
    </script>
    <script>
      google.load('visualization', '1', {
      'packages': ['geochart', 'table']
      });
      google.setOnLoadCallback(drawRegionsMap);
      
      function drawRegionsMap() {
        <%
            Vector array_aux_Estado = (Vector) request.getAttribute("pesquisa_Estado");
            if(array_aux_Tipo != null){
                Object[] aux = array_aux_Estado.toArray(new Estado[array_aux_Estado.size()]);
                Estado[] pesquisa_Estado = Arrays.copyOf(aux, aux.length,Estado[].class);      
        %>
        var data = google.visualization.arrayToDataTable([
        // Results For US States
        // State format must be "BR-**"
        // US represents region, while the ** section represents the individual state 
          ['State', 'Views'],
          ['BR-<%out.print(pesquisa_Estado[0].getEstado());%>', <%out.print(pesquisa_Estado[0].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[1].getEstado());%>', <%out.print(pesquisa_Estado[1].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[2].getEstado());%>', <%out.print(pesquisa_Estado[2].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[3].getEstado());%>', <%out.print(pesquisa_Estado[3].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[4].getEstado());%>', <%out.print(pesquisa_Estado[4].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[5].getEstado());%>', <%out.print(pesquisa_Estado[5].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[6].getEstado());%>', <%out.print(pesquisa_Estado[6].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[7].getEstado());%>', <%out.print(pesquisa_Estado[7].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[8].getEstado());%>', <%out.print(pesquisa_Estado[8].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[9].getEstado());%>', <%out.print(pesquisa_Estado[9].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[10].getEstado());%>', <%out.print(pesquisa_Estado[10].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[11].getEstado());%>', <%out.print(pesquisa_Estado[11].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[12].getEstado());%>', <%out.print(pesquisa_Estado[12].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[13].getEstado());%>', <%out.print(pesquisa_Estado[13].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[14].getEstado());%>', <%out.print(pesquisa_Estado[14].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[15].getEstado());%>', <%out.print(pesquisa_Estado[15].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[16].getEstado());%>', <%out.print(pesquisa_Estado[16].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[17].getEstado());%>', <%out.print(pesquisa_Estado[17].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[18].getEstado());%>', <%out.print(pesquisa_Estado[18].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[19].getEstado());%>', <%out.print(pesquisa_Estado[19].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[20].getEstado());%>', <%out.print(pesquisa_Estado[20].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[21].getEstado());%>', <%out.print(pesquisa_Estado[21].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[22].getEstado());%>', <%out.print(pesquisa_Estado[22].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[23].getEstado());%>', <%out.print(pesquisa_Estado[23].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[24].getEstado());%>', <%out.print(pesquisa_Estado[24].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[25].getEstado());%>', <%out.print(pesquisa_Estado[25].getQuantidade());%>],
          ['BR-<%out.print(pesquisa_Estado[26].getEstado());%>', <%out.print(pesquisa_Estado[26].getQuantidade());%>]
        ]);
  
        var view = new google.visualization.DataView(data)
        view.setColumns([0, 1])
        
        var chart = new google.visualization.GeoChart(
        document.getElementById('chart_div2'));
        chart.draw(data, options);
    
        var geochart = new google.visualization.GeoChart(
        document.getElementById('chart_div2'));
        var options = {
            region: 'BR',
            resolution: 'provinces',
            backgroundColor: '#81d4fa',
            datalessRegionColor: '#f8bbd0'
            //colorAxis: {
            //colors: ['#acb2b9', '#2f3f4f']
            //} 
        };
        geochart.draw(data, options);

      <%}%>
    }
    </script>
  </body>
</html>
