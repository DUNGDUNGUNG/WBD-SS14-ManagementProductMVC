<%--
  Created by IntelliJ IDEA.
  User: cong
  Date: 23/07/2019
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
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

        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="product">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend><strong>Product information</strong></legend>
        <table>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name" value="${requestScope['products'].getName()}"></td>
            </tr>
            <tr>
                <th>Price:</th>
                <td><input type="text" name="price" value="${requestScope['products'].getPrice()}"></td>
            </tr>
            <tr>
                <th>Description:</th>
                <td><input type="text" name="description" value="${requestScope['products'].getDescription()}"></td>
            </tr>
            <tr>
                <th>producer:</th>
                <td><input type="text" name="producer" value="${requestScope['products'].getProducer()}"></td>
            </tr>
            <tr>
                <th></th>
                <td><input type="submit" value="Edit product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
