<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 24/07/2019
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete product</title>
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
<h1>Delete product</h1>
<p>
    <a href="product">Back to product list</a>
</p>
<form method="post">
    <h2> Are you sure?</h2>
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
            <tr>
                <th></th>
                <td><input type="submit" value="Delete product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
