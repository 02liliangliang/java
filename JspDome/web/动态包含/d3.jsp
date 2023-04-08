<%--
  Created by IntelliJ IDEA.
  User: 李亮亮
  Date: 2023/4/8
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Title</title>
</head>
<body>

    这是第三个动态包含页面
    <%

        //需要先配置Servlet环境，才能调用request.getParmeter()方法
        //添加jsp.api依赖
        String uname =request.getParameter("uname");
        out.print(uname);


    %>
</body>
</html>
