<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.util.*" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Diagnostics</title>
  </head>
  
  <body>
    <% // This is a scriptlet. Notice that the "date"
       // variable we declare here is available in the
       // embedded expression later on.
       System.out.println( "Evaluating date now" );
       java.util.Date date=new java.util.Date();
       // Get Java System Properties
       Properties sysProps=System.getProperties();
       // Get Environment Variables
       Map<String, String> envMap = System.getenv();
       // Print System Environment to STDOUT
       // envMap.entrySet().forEach(System.out::println);
    %>

    <h1>Java Diagnostic Utility</h1>
    The time is now <%= date %>

    <hr>
    <%-- Key=Value - Good for Integration Tests --%>
    <h2>System Properties</h2>
    <table class="table table-active table-bordered table-hover table-striped">
      <thead>
        <tr>
          <th>Key</th>
          <th>Value</th>
        </tr>
      </thead>
      <tbody class="table-group-divider">
        <% for (Object obj : sysProps.keySet()) {%>
          <tr>
            <td>
              <%=obj%>
            </td>
            <td>
              <%=sysProps.getProperty(((String) obj))%>
            </td>
          </tr>
          <% }%>
      </tbody>
    </table>

    <hr>

    <h2>Environment Variables</h2>
    <table class="table table-active table-bordered table-hover table-striped">
      <thead>
        <tr>
          <th>Key</th>
          <th>Value</th>
        </tr>
      </thead>
      <tbody class="table-group-divider">
        <% for (String key : envMap.keySet() ) {%>
          <tr>
            <td>
              <%=key%>
            </td>
            <td>
              <%=envMap.get(key)%>
            </td>
          </tr>
          <% }%>
      </tbody>
    </table>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
