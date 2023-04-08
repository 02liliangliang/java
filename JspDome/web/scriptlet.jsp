<%--
  Created by IntelliJ IDEA.
  User: 李亮亮
  Date: 2023/4/8
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>scriptlet</title>
</head>
<body>
    <%
        int a = 1;
        //局部变量
    %>
    <%!
        String c = "zzzzz";
        //全局变量
    %>
    <%=
    a + c
    //输出表达式
    %>
</body>
</html>
