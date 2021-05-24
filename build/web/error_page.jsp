<%-- 
    Document   : error_page
    Created on : 16-May-2021, 6:43:08 pm
    Author     : ANIKET GHULE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry: Something went wrong</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
     
    </head>
    <body>
        <div class="container text-center">
            <img src="image/1753913.png" class="img-fluid">
            <h3 class="display-3">Sorry ... !! Something went wrong</h3>
            <%= exception%>
            <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3"> Home</a>
        </div>
    </body>
</html>
