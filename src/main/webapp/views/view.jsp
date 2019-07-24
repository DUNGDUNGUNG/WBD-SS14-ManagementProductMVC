<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 24/07/2019
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
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
        h2{
            color: cadetblue;
        }
    </style>
</head>
<body>
<h1>View product</h1>
<p>
    <a href="product">Back to product list</a>
</p>
    <fieldset>
        <legend><strong>Product information</strong></legend>
        <table>
            <tr>
                <th>Name:</th>
                <td>${requestScope['products'].getName()}</td>
            </tr>
            <tr>
                <th>Price:</th>
                <td>${requestScope['products'].getPrice()}</td>
            </tr>
            <tr>
                <th>Description:</th>
                <td>${requestScope['products'].getDescription()}</td>
            </tr>
            <tr>
                <th>producer:</th>
                <td>${requestScope['products'].getProducer()}</td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
