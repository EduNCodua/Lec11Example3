<%--
  Created by IntelliJ IDEA.
  User: makovetskyi
  Date: 21.12.2016
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% String name;%>
<% name = request.getParameter("name");
    if (name == null || name.isEmpty()) {
        name = "stranger";
}%>
<html>
  <head>
    <title>Hello App</title>
  </head>
  <body>
  Hello <%= name%> !
  <form name="NameForm" action="Hello.jsp">
      <input type="submit" value="My name is" name="My name is" />
      <input type="text" name="name" value="" size="30" />
  </form>
  </body>
</html>
