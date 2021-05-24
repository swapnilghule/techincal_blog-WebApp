<%-- 
    Document   : profile.jsp
    Created on : 16-May-2021, 7:51:20 pm
    Author     : ANIKET GHULE
--%>
<%@page import="com.wtproject.entities.Users"%>
<%@page errorPage="error_page.jsp"%>
<%
    
Users user=(Users)session.getAttribute("currentUser");
if(user==null)
{
    response.sendRedirect("login_page.jsp");
    
    
}
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!--css-->
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
     
    </head>
    <body>
        <!--navbar-->
                      <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-white">
                             <a class="navbar-brand" href="index.jsp"><span class="fa fa-mortar-board"></span>Student Mentoring </a>
                              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                              </button>

                              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">
                                  <li class="nav-item active">
                                    <a class="nav-link" href="index.jsp"><span class="fa fa-home">Home </a>
                                  </li>
                                  
                                  
                                 
                                  
                                  <li class="nav-item">
                                    <a class="nav-link" href="#"><span class="fa fa-book ">Contact</a>
                                  </li>
                                  
                                 
                                </ul>
                                  
                                  
                                  <ul class="navbar-nav mr-right">
                                  <li class="nav-item">
                                    <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span>Log out</a>
                                  </li>
                                  
                                   <li class="nav-item mr-right">
                                    <a class="nav-link" href="register.jsp"><span class="fa fa-user-circle"></span><%=user.getName()%></a>
                                  </li>
                                      
                                  </ul>
                                  
                               <!--
                                <form class="form-inline my-2 my-lg-0">
                                  <input class="form-control mr-sm-2 " type="search" placeholder="Search" aria-label="Search">
                                </form>
                                  <button class="btn btn-outline-light my-2 my-lg-8 bg-dark" type="submit">Search</button>
                                 -->
                              </div>
                            </nav>

             
        
        
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>    </body>

    </body>
</html>
