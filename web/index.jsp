<%@ page import="storage.AdStorage" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 21.12.2016
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! AdStorage storage = AdStorage.getStorage();%>

<% String newAd = request.getParameter("new_ad");
    if (newAd != null && !newAd.isEmpty()) {
        storage.addad(newAd);
    }%>

<html>
  <head>
    <title>Ad App</title>
  </head>
  <body>
  All ads at current time:
  <% for (String ad : storage) {%>
      <p> <b>Ad -</b> <%=ad%>
  <%}%>

  <form name="NameForm" action="index.jsp">
      <input type="text" name="new_ad" value="" size="30" /><p>
      <input type="submit" value="Add ad" name="" />
  </form>
  </body>
</html>
