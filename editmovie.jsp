<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Movie m = (Movie)request.getAttribute("movie");  %>

<form action="updatemovie" method="post" enctype="multipart/form-data">

movieid     :<input type="number" name="movieid" value="<%=m.getMovieid() %>"><br><br>
moviename   :<input type="text" name="moviename"value="<%=m.getMoviename() %> "><br><br>
movieprice  :<input type="text" name="movieprice"  value="<%=m.getMovieprice() %> "><br><br>
movierating :<input type="text" name="movierating" value="<%=m.getMovierating() %> "><br><br>
moviegenre  :<input type="text" name="moviegenre" value="<%=m.getMoviegenre() %> "><br><br>

movielanguage  :<input type="text" name="movielanguage" value="<%=m.getMovielanguage() %> "><br><br>
movieimage  :<input type="file" name="movieimage"><br><br>



<%String base64image = new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<td><img src="data:image/jpeg;base64 , <%=base64image%>" height="100px" width="100px"></td>

<input type="submit">

</form>


</body>
</html>