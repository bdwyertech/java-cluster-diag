<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <%@page import="java.util.*" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <html>

      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diagnostics</title>
      </head>

      <body>
        <h2>Hello World!</h2>
        <%
          // This is a scriptlet. Notice that the "date"
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

          Hello! The time is now <%= date %>

            <h2>System Properties</h2>
            <table>
              <thead>
                <tr>
                  <th>Key</th>
                  <th>Value</th>
                </tr>
              </thead>
              <tbody>
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

            <h2>Environmental Variables</h2>
            <table>
              <thead>
                <tr>
                  <th>Key</th>
                  <th>Value</th>
                </tr>
              </thead>
              <tbody>
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



            <h1>System Readable</h1>
            <%-- Key=Value - Good for Integration Tests --%>

            <h2>System Properties</h2>
            <% for (Object obj : sysProps.keySet()) {%>
              <%=obj%>=<%=sysProps.getProperty(((String) obj))%><br>
            <% }%>

            <h2>Environmental Variables</h2>
            <% for (String key : envMap.keySet() ) {%>
              <%=key%>=<%=envMap.get(key)%><br>
            <% }%>

      </body>

      </html>