<%-- 
    Document   : Vistos
    Created on : Jun 4, 2019, 11:29:55 PM
    Author     : hskodama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Arrays"%>
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
        <script>$(document).ready(function(){
            $('#table_vistos').DataTable();
            });
        </script>
        <script>
            function visu(){
            //$.post("Vistos");
            var postFormStr = "<form method='POST' action='Vistos'>\n";
            postFormStr += "</form>";
            var formElement = $(postFormStr);
            $('body').append(formElement);
            $(formElement).submit();  
          }
          function carrega(){
            <%if (request.getAttribute("pesquisa_Vistos")== null){%>
              visu();
            <%}%>
          }
        </script>
    </head>
    <body onload="carrega()">
        <nav class="navbar nav sticky-top">
            <ul>
                <li>
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li>
                    <a class="nav-link" href="Pessoas.jsp">Pessoas</a>
                </li>
                <li>
                    <a class="active" href="Vistos.jsp">Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Tipo_Visto.jsp">Tipos de Vistos</a>
                </li>
                <li>
                    <a class="nav-link" href="Pesquisa.jsp">Pesquisas</a>
                </li>
                <li>
                    <a class="nav-link" href="Visualizacao.jsp">Visualização</a> 
                </li>
            </ul>
        </nav>
        
        <%
            Vector array_aux_Vistos = (Vector) request.getAttribute("pesquisa_Vistos");
            if(array_aux_Vistos != null){
                Object[] aux = array_aux_Vistos.toArray(new Visto[array_aux_Vistos.size()]);
                Visto[] pesquisa_visto = Arrays.copyOf(aux, aux.length,Visto[].class);      
        %>
        
        <div class="cont">
            <div id="tabela">
                <table id="table_vistos" class="display hover table table-striped table-bordered" style="width: 90%">
                    <thead>
                        <tr>
                            <th>RNE</th>
                            <th>Classificação</th>
                            <th>Data de Expedição</th>
                            <th>Data de Expiração</th>
                            <th>Data de Entrada</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for(int i = 0 ; i < array_aux_Vistos.size() ; i++){
                        %>
                            <tr onclick='rne("<%out.print(pesquisa_visto[i].getRne());%>")'>
                                <td><%out.print(pesquisa_visto[i].getRne());%></td>
                                <td><%out.print(pesquisa_visto[i].getClassificacao());%></td>
                                <td><%out.print(pesquisa_visto[i].getDataExped());%></td>
                                <td><%out.print(pesquisa_visto[i].getDataExpir());%></td>
                                <td><%out.print(pesquisa_visto[i].getDataEntr());%></td>
                            </tr>
                        <%
                            }
                        %>

                    </tbody>
                </table>
                <%}%>
            </div>

        </div>
    	<script src="bootstrap-4.0.0-dist/js/bootstrap.js"></script>
        <script type='text/javascript'>
            function rne(rne){
                window.location.replace("/TrabalhoIntegrado/Visto_Pessoa.jsp?rne=" + rne);
            }
        </script> 
    </body>

