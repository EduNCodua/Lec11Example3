<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 21.12.2016
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%! String name;%>
<% name = request.getParameter("name");
    if (name.isEmpty()) {
        name = "stranger";
}%>
<html>
  <head>
    <title>Hello App</title>
  </head>
  <body>
  Hello <%= name%> !
  <form name="NameForm" action="index.jsp">
      <input type="submit" value="My name is" name="My name is" />
      <input type="text" name="name" value="" size="30" />
  </form>
  </body>
</html>
