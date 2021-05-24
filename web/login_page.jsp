<%-- 
    Document   : login_page.jsp
    Created on : 27-Feb-2021, 5:30:09 pm
    Author     : ANIKET GHULE
--%>

<%@page import="com.wtproject.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!--css-->

          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
                  <style>
              .banner-background{
              clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 76% 96%, 48% 100%, 23% 95%, 0 99%, 0% 35%, 0 0);   }           
          </style>
    </head>
    <body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
  


<!--navbar-->

  <%@include file="normal_navbar.jsp" %>

<main class="d-flex align-items-center third-back banner-background" id="login" style="height: 80vh">
 <div class="container">
                  <div class="row">
                      <div class="col-md-4 offset-md-4">
                          
                          <div class="card">
                              <div class="card-header text-white bg-dark text-center">
                                  <span class="fa fa-user-plus fa-3x"></span>
                                  <br>
                                  <p>login Here</p>
                              </div>
                              
                              <%
                                  Message m=(Message)session.getAttribute("msg");
                                  if(m!=null)
                                  {
                                  %>
                                      <div class="alert <%= m.getCssClass()%>" role="alert">
                                         <%= m.getContent() %>
                                      </div>
                                  <%
                                      session.removeAttribute("msg");
                                  }
                              %>
                              
                              
                              <div class="card-body">
                                  <form action="login" method="post">
                                                <div class="mb-3">
                                                  <label for="exampleInputEmail1" class="form-label">Email address</label>
                                                  <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                </div>
                                                <div class="mb-3">
                                                  <label for="exampleInputPassword1" class="form-label">Password</label>
                                                  <input  name="password" required type="password" class="form-control" id="exampleInputPassword1">
                                                </div>
                                             
                                                <div class="container text-center">
                                                <button type="submit" class="btn btn-primary bg-dark">Submit</button>
                                                </div>
                                              </form>
                              </div>
                          </div>
                      </div>
                  </div>
</div>
    
</main>
    </body>
</html>
