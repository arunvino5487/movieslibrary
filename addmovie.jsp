<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="savemovie" method="post" enctype="multipart/form-data">

movieid     :<input type="number" name="movieid"><br><br>
moviename   :<input type="text" name="moviename"><br><br>
movieprice  :<input type="text" name="movieprice"><br><br>
movierating :<input type="text" name="movierating"><br><br>
moviegenre  :<input type="text" name="moviegenre"><br><br>

movielanguage  :<input type="text" name="movielanguage"><br><br>
movieimage  :<input type="file" name="movieimage"><br><br>



<input type="submit">

</form>



</body>
</html>