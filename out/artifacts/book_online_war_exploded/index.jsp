<%@ page import="com.web.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/9/28
  Time: 0:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }
        body{
            color: #333;
        }
        header {
            height: 60px;
            background-color: rgb(38, 166, 154);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-left: 10px;
            padding-right: 10px;
        }
        .nav {
            flex: 0 0 50%;
            list-style: none;
            display: flex;
        }
        .nav li {
            margin-left: 10px;
            margin-right: 10px;
            width: 50px;
        }
        .user-info {
            padding-right: 20px;
        }
        /* 超链接样式 */
        .nav li a {
            text-decoration: none;
            color: #eee;
        }
        .nav li a:hover {
            color: #fff;
        }
        /* 搜索区样式 */
        .search-wrap{
            height: 60px;
            background-color: #ddd;
            display: flex;
            align-items: center;
            padding-left: 10%;
            margin-bottom: 10px;
        }
        .container{
            width: 80%;
            margin: 0 auto;
            /*/height: 600px;*/
            background-color: #eee;
            display: flex;
            padding: 5px 5px 5px 5px;
        }

        .left{
            flex: 0 0 66%;
            height: 90%;
            background-color: #fff;
            padding: 10px 10px 10px 10px;
        }
        .right{
            flex: 0 0 33%;
            height: 100%;
            margin-left: 5px;
            background-color: #aaa;
        }
        .row{
            display: flex;
            /* 自动换行 */
            flex-wrap: wrap;
            padding: 10px 10px 10px 10px;

        }
        .input-box{
            width: 350px;
            height: 35px;
            /*border: 1px solid #eee;*/
            border-radius: 5px;
            margin-left: 10px;
        }
        .column{
            flex: 0 0 18%;
            height: 180px;
            background-color: #fff;
            border: 1px solid #333;
            border-radius: 10px;
            margin: 5px 5px 5px 5px;
        }
        footer{
            height: 100px;
            background-color: #aaa;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .box{
            flex:0 0 17.6%;
            height: 280px;
            margin: 5px 5px 5px 5px;
            background-color: #ffffff;
        }
        .box img{
            width: 90%;
            height: 70%;
        }
    </style>

</head>

<body>
<!-- 顶部导航 -->
<header>
    <div>
        <!-- 导航 -->
        <ul class="nav">
            <li>
                <a href="#">首页</a>
            </li>
            <li>
                <a href="#">排行</a>
            </li>
            <li>
                <a href="#">免费</a>
            </li>
            <li>
                <a href="#">分类</a>
            </li>
            <li>
                <a href="#">个人</a>
            </li>
        </ul>
    </div>
    <div class="user-info">
        <h3>草莓味的混世少女</h3>
    </div>
</header>
<!-- 搜索区 -->
<div class="search-wrap">
    <h2>读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容"class="input-box">
</div>
<%
    String username = (String) session.getAttribute("username");
    if (username != null) {
        pageContext.setAttribute("username",username);
%>

<%
}else {
%>
<h3><a href="${pageContext.request.contextPath}">去登陆</a></h3>
<%
    }
%>
<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
    pageContext.setAttribute("size",bookList.size());
%>

<div class="container">
    <div class="left">
        <h2>好书精选</h2>
        一共${size}本书
        <hr>
        <div class="row">

            <%
                for (Book book : bookList) {
                    pageContext.setAttribute("book",book);
            %>
            <div class="box">
                <img src="images/${book.cover}" alt="">
                <p>${book.name}</p>
                <p>${book.author}</p>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <div class="right">

    </div>
</div>
<!-- 脚注区 -->
<footer>
    <p>南京工业职业技术学院</p>
</footer>
</div>
</body>
</html>
