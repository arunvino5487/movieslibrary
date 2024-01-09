<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="adminlogin" method="post">

Admin Mail  :<input type="email" name="amail"><br><br>
Admin password  :<input type="password" name="apass"><br><br>

<input type="submit">

</form>

<% String message = (String)request.getAttribute("message"); %>
<%if(message != null){ %>
<%= message %>
<% } %>



</body>
</html>