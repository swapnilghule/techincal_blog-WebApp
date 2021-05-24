<%-- 
    Document   : register.jsp
    Created on : 27-Feb-2021, 5:50:26 pm
    Author     : ANIKET GHULE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
 <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

 <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

<%@include file="normal_navbar.jsp" %>
<main class="third-back p-5 banner-background" >
 <div class="container">
                  
                  <div class="col-md-6 offset-md-3">
                      
                      <div class="card">
                           
                          <div class="card-header text-center  text-white bg-dark">
                              <span class="fa fa-3x fa-user-circle"></span>
                              <br>
                          
                              Register Here
                          </div>
                          <div class="card-body">
                                  <form id="reg-form" action="RegisterServlet" methods="POST" class="form">
                                      
                                            <div class="mb-3 form-field">
                                              <label for="user_name" class="form-label">Student Name</label>
                                              
                                              <input name="user_name" type="text" class="form-control" id="username" placeholder="First_Name  Last_Name" autocomplete="off">
                                              <small style="color: red;"></small>

                                            </div>
                                            <div class="mb-3 form-field">
                                              <label for="user_email" class="form-label">Email address</label>
                                              <input name="user_email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter Email" autocomplete="off">
                                             
                                                 <small style="color: red;" ></small>

                                            </div>
                                            <div class="mb-3 form-field">
                                              <label for="user_password" class="form-label">Password</label>
                                              <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter password">
                                                   <small style="color: red;"></small>

                                            </div>
                                      
                                            <div class="mb-3 form-field"> 
                                              <label for="confirm_password">Confirm Password</label>
                                              <input type="password" placeholder="confirm Password" name="confirm_password" class="form-control" id="confirm-password" >
                                                <small style="color: red;"></small>
                                             </div>
                                      
                                            <div class="mb-3 form-field"> 
                                            <label for="user_dob">Date of Birth</label>
                                            <input type="text" placeholder="Enter DOB" class="form-control" name="user_dob" id="dob" autocomplete="off">
                                              <small style="color: red;"></small>
                                            </div>
                                      
                                           
                                            <div class="mb-3 form-field">
                                              <label for="user_regid" class="form-label">Registration ID</label>
                                              <input type="text" name="user_regid" class="form-control" id="regid" aria-describedby="regid" placeholder="Enter Reg. ID" autocomplete="off">
                                                 <small style="color: red;"></small>

                                            </div>
                                      
                                             <div class="mb-3 form-field">
                                              <label for="user_rollno" class="form-label">Roll No.</label>
                                              <input type="text" name="user_rollno" class="form-control" id="roll" aria-describedby="year" placeholder="(e.g) 31384" autocomplete="off">
                                                 <small style="color: red;"></small>

                                            </div>
                                      
                                           
                                      
                                            <div class="mb-3 form-field">
                                              <label for="user_no" class="form-label">Contact No.</label>
                                              <input type="text" class="form-control" name="user_no"  id="Pno" aria-describedby="year" placeholder="Enter 10-digit phone number" autocomplete="off">
                                                  <small style="color: red;"></small>

                                            </div>
                                      
                                           
                                      
                                          
                                      
                                      
                                          
                                      
                                      
                                      <br>
                                      <div class="container text-center" style="display: none" id="loader">
                                      <span class="fa fa-refresh fa-spin fa-4x"></span>
                                      <h4> Please wait...</h4>
                                      </div>
                                      <br>
                                            <button id="submit"  type="submit" class="btn btn-primary bg-dark">Submit</button>
                                          </form>
                              </div>
                          
                           </div>
                           
                           
                  </div>
</div>
    <script src="js/myjs.js" type="text/javascript"></script>
</main>


    </body>
</html>
