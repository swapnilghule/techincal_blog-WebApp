<%-- 
    Document   : index
    Created on : 26-Feb-2021, 8:54:28 pm
    Author     : ANIKET GHULE
--%>

<%@page import="com.wtproject.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Technology Blog</title>
          <!--css-->
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
     
          <style>
              .banner-background{
              clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 76% 96%, 48% 100%, 23% 95%, 0 99%, 0% 35%, 0 0);  
              }           
          </style>
                    
        
    </head>
    
    <body>
  
     
        <%@include file="normal_navbar.jsp" %>
        
        <div class="container-fluid p-0 m-0 ">
            <div class="jumbotron padding primary-background banner-background text-white">
                <div class="container padding">
                <h3 class="display-4"> Technical Blog  </h3>
                <p>Hello users ...!!! </p>
                 <p>Technical blogging is a great way to share your expertise while building a potentially valuable readership. It can help you to document projects, or provide guidance to other web users. You can also monetize your content, or use your blog to market your services..</p>
                 
                 
                 <a href="register.jsp" class="btn btn-outline-dark btn-lg text-white  bg-dark ml-12 "><span class="fa fa-user-plus ml-12"></span>Register Now !! </a>
                 <a href="login_page.jsp" class="btn btn-outline-dark btn-lg bg-dark text-white">  <span class="fa fa-user-circle-o mr-12 fa-spin">  </span>Login </a>
                </div>
            </div>
            
           
            
            
            
        </div>
        <br>
        <br>
        <br>
        
       
        <!--cards
        -->
 <div class="container">
<div class="row">
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Share Your Knowledge</h5>
        <p class="card-text">Share your knowledge as you explore the site you can see your blogs and category wise.</p>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Gain Some Knowledge </h5>
        <p class="card-text"> Gain Knowledge from different professionals and explore the different technology background like ML, java, python and many more..!!!!!!!</p>
        <a href="register.jsp" class="btn btn-primary bg-dark">Go and Register Now...!!!</a>
      </div>
    </div>
  </div>
     <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Choose your category</h5>
        <p class="card-text"> Category, field you want is open for all. register and login to explore the site....!!! Now..!!!</p>
      </div>
    </div>
  </div>
</div>
 </div>   
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>    </body>
</html>
