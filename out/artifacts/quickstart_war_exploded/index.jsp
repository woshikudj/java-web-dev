<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/9/27
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
</head>
<body>
首页
<h3>
  欢迎您：${pageContext.request.getAttribute("username")}
</h3>
您的密码是：${pageContext.request.getAttribute("password")}
<a href="login.html">点击返回登陆</a>
</body>
</html>
