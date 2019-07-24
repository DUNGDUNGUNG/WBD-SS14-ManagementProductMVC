<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 23/07/2019
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <style>
        body {
            width: 800px;
            height: auto;
            margin: auto;
        }

        a {
            display: block;
            position: relative;
            color: palevioletred;
            font-size: 17px;
            background-color: lightblue;
            padding: 12px 24px;
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="product?action=create" class="ama">Create new product</a>
</p>
<form method="post" action="product?action=search">
    <label>
        <input type="text" name="search" style="height: 37px; width: 300px">
    </label>
</form>
<table border="1" cellpadding="10">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Producer</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="pro">
        <tr>
            <td><a href="product?action=view&id=${pro.getId()}">${pro.getName()}</a></td>
            <td>${pro.getPrice()}</td>
            <td>${pro.getDescription()}</td>
            <td>${pro.getProducer()}</td>
            <td><a href="product?action=edit&id=${pro.getId()}">edit</a></td>
            <td><a href="product?action=delete&id=${pro.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
