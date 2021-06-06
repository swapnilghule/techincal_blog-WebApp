<%@page import="com.wtproject.dao.UserDao"%>
<%@page import="com.wtproject.entities.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wtproject.entities.Category"%>
<%@page import="com.wtproject.helper.ConnectionProvider"%>
<%@page import="com.wtproject.dao.PostDao"%>
<%@page import="com.wtproject.entities.Message"%>
<%@page import="com.wtproject.entities.Users"%>

<%@page errorPage="error_page.jsp"%>
<%
    
Users user=(Users)session.getAttribute("currentUser");
if(user==null)
{
    response.sendRedirect("login_page.jsp");
    
    
}
%>
<%
  
int postId= Integer.parseInt(request.getParameter("post_id"));

PostDao d =new PostDao(ConnectionProvider.getConnection());
Post p=d.getPostByPostId(postId);

    
%>    


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=p.getpTitle()%></title>
         <!--css-->
         <style>
              .banner-background{
              clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 76% 96%, 48% 100%, 23% 95%, 0 99%, 0% 35%, 0 0);  
              }           
          </style>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
          <link href="css/post.css" rel="stylesheet" type="text/css"/>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">     
    </head>
    <body>
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script src="js/add_post.js" type="text/javascript"></script>
<script src="js/load_post.js" type="text/javascript"></script>
<script src="js/profile.js" type="text/javascript"></script>

          
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        <!--navbar-->
                      <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-white">
                             <a class="navbar-brand" href="index.jsp"><span class="fa fa-mortar-board"></span>Technical Blog </a>
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
                                  <li class="nav-item">
                                    <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-asterisk ">Do Post</a>
                                  </li>
                                  
                                 
                                </ul>
                                  
                                  
                                  <ul class="navbar-nav mr-right">
                                  <li class="nav-item">
                                    <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span>Log out</a>
                                  </li>
                                  
                                   <li class="nav-item mr-right">
                                    <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></span><%=user.getName()%></a>
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
                               
                                  
                                  
   <!--Main content of body-->
   
   <div class="contianer">
       <div class="row">
           <div class="col-md-8 offset-md-2">
                        

           <div class="card">
               <div class="card-header">
                   <h4 class="post-title"><%= p.getpTitle()%></h4>   
               </div>  
              
               
               <div class="card-body">
                    <img class="card-img-top img-fluid img-thumbnail" src="blog_pics/<%= p.getpPic() %>" alt="Card image cap">
                    
                      <div class="row row-user">
                       <div class="col-md-8">
                           
                           
                           <%
                               UserDao ud=new UserDao(ConnectionProvider.getConnection());
                               
                           %>
                           <p> <a href="#!" > <%=ud.getuserPostbyID(p.getUserid()).getName() %></a> has posted:</p>
                       </div>
                       
                       <div class="col-md-4">
                       
                       
                       </div>
                   </div>
                   <p class="post-content"><%=p.getpContent()%></p> 
                   
                   
                  
                   
                   
                   <br><!-- comment -->
                   <br><!-- comment -->
                   
                 <div class="post-code">
                   <pre><%=p.getpCode()%></pre>
                 </div>
               </div>
               
               
               <div class="footer primary-background">
                   <p class="bg-light"> Powered by Tech Blog </p>
               </div>
           </div>
               
               
               
           </div>
       </div>
   </div>
       
<!-- Start of Profile Modal-->


<!-- Modal -->


<!-- Modal -->
<div class="modal fade" id="profile-modal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h5 class="modal-title" id="staticBackdropLabel">TechBlog</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              
              <img src="picture/<%= user.getProfile() %>" class="img-fluid" style="border-radius: 50%; max-width: 150px"/>
              <br>
              <h5 class="modal-title mt-3" id="staticBackdropLabel"><%= user.getName()%></h5>
              <!--details-->
              <div id="profile-details">               
                                <table class="table">

                                  <tbody>
                                    <tr>
                                      <th scope="row">ID:</th>
                                      <td><%= user.getId()%></td>

                                    </tr>
                                    <tr>
                                      <th scope="row">Email:</th>
                                      <td><%= user.getEmail()%></td>

                                    </tr>
                                    <tr>
                                      <th scope="row">Status:</th>
                                      <td><%= user.getAbout()%></td>

                                    </tr>

                                  </tbody>
                                </table>
              </div>    
                                      
              <!--profile-edit-->
              <div id="profile-edit" style="display:none">
                  <h3 class="mt-2">Please Edit carefully</h3>
                  <form action="EditServlet" method="post" enctype="multipart/form-data">
                      <table class="table">
                          <tr>
                              <td>ID:</td>
                              <td><%= user.getId()%></td>
                          </tr>
                           <tr>
                              <td>Email</td>
                              <td> <input class="form-control" type="email" name="user_email" value="<%= user.getEmail()%>"/></td>
                          </tr>
                          <tr>
                              <td>Name:</td>
                              <td> <input class="form-control" type="text" name="user_name" value="<%= user.getName()%>"/></td>
                          </tr>
                          <tr>
                              <td>Password:</td>
                              <td> <input class="form-control" type="text" name="user_password" value="<%= user.getPassword()%>"/></td>
                          </tr>
                           <tr>
                              <td>About:</td>
                              <td> <textarea class="form-control" row="5" type="text" name="user_about" ><%= user.getAbout()%></textarea></td>
                          </tr>
                           <tr>
                              <td>New Profile:</td>
                              <td>
                                  <input type="file" name="image" class="form-control"/>
                              </td>
                          </tr>
                           
                      </table>
                          
                          
                    <div class="container">
                        <button type="submit" class="btn btn-outline-primary">Save</button>
                    </div>
                      
                  </form>
              </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-btn" type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>

<!--End of profile Modal;-->

<!--Add post modal-->
<div class="modal fade" id="add-post-modal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Provide Post details</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
          <form id="add-post-form" action="AddPostServlet" method="post" enctype="multipart/form-data">
              <div class="form-group">
              <select class="form-control" name="cid">
                  <option selected="disabled">---Select category---</option>
                  
                  <% 
                        PostDao postd=new PostDao(ConnectionProvider.getConnection());
                        ArrayList<Category> list=postd.getCategories();
                        for(Category c:list)
                        {
                            %>
                            <option value="<%= c.getCid() %>"><%= c.getName()%></option>
                            <%
                        }
                   %>
                  
              </select>
              </div>
              <div class="form-group">
                  <input name="PTitle" type="text" placeholder="Enter Post Title" class="form-control"/>
              </div>
              <div class="form-group">
                  <textarea  name="PContent" class="form-control"  style="height:300px;" placeholder="Enter Your Content" ></textarea>
              </div>
              <div class="form-group">
                  <textarea  name="PCode" class="form-control" style="height:300px;"   placeholder="Enter Your program (if any)"></textarea>
              </div>
               <div class="form-group">
                   <label>Select your pic</label><!--  -->
                   <br>
                  <input name="PPic" type="file" placeholder="Enter Your Pic" class="form-control"/>
              </div>
              <div class="container text-center">
                <button type="submit" class="btn btn-outline-primary" >Post</button>
              </div>
                   
          </form>
          
          
          
      </div>
      
    </div>
  </div>
</div>





<!--End Post modal-->

       
    </body>
</html>
