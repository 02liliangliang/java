<%--
  Created by IntelliJ IDEA.
  User: 李亮亮
  Date: 2023/4/8
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Title</title>
</head>
<body>
    <%
    String url="d3.jsp";
    %>
    这是第一个动态包含页面
    <jsp:include page="d2.jsp"/>
    换一种方式
    <jsp:include page="<%=url%>"/>

    动态包含传递参数
    <jsp:include page="d2.jsp">
        <jsp:param name="uname" value="2"/>
    </jsp:include>
    <jsp:include page="<%=url%>">
        <jsp:param name="uname" value="3"/>
    </jsp:include>
</body>
</html>
