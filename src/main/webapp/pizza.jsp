<%--
  Created by IntelliJ IDEA.
  User: miaevans
  Date: 11/2/22
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza</title>
</head>
<body>
<form action="/pizza-order" method="POST">
    <label for="size">Size</label>
    <select id="size" name="size">
        <option value="sm">Small</option>
        <option value="md">Medium</option>
        <option value="lg">Large</option>
    </select>
    <button type="submit">Submit</button>
</form>

</body>
</html>
