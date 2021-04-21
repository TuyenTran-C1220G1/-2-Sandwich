<%--
  Created by IntelliJ IDEA.
  User: TT
  Date: 20/04/2021
  Time: 4:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Show Checkboxes</h1>

  <form action="/save" method="get">
    <input type="checkbox" id="1" name="condiment" value="Lettuce">
    <label for="1"> Lettuce</label>
    <input type="checkbox" id="2" name="condiment" value="Tomato">
    <label for="2"> Tomato</label>
    <input type="checkbox" id="3" name="condiment" value="Mustard">
    <label for="3"> Mustard</label>
    <input type="checkbox" id="4" name="condiment" value="Sprouts">
    <label for="4"> Sprouts</label><br>
    <input type="submit" value="Submit">
  </form>
  <table border="1px solid">
    <tr>
      <td>condiment</td>
    </tr>
    <c:forEach var="condiment" items="${condiments}">
      <tr>
        <td>${condiment}</td>
      </tr>
    </c:forEach>
  </table>


  </body>
</html>
