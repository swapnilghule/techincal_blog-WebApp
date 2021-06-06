<%@page import="com.wtproject.dao.PostDao"%>
<%@page import="java.util.List"%>

<%@page import="com.wtproject.entities.Post"%>
<%@page import="com.wtproject.helper.ConnectionProvider"%>
<div class="row">
<%
    PostDao d= new PostDao(ConnectionProvider.getConnection());
    int cid=Integer.parseInt(request.getParameter("cid"));
            List<Post> posts=null;

    if(cid==0)
    {
       posts=d.getAllPosts();
    }
    else{
        posts=d.getPostbyCatID(cid);
    }
   
   
   if(posts.size()==0)
   {
       out.println("<h1 class='display-6 text-center'>No Post in this category</h1>");
       return;
   }
    for(Post p:posts)
    {
%>
<div class="col-md-4 mt-2">
    <div class="card">
          <img class="card-img-top img-fluid img-thumbnail" src="blog_pics/<%= p.getpPic() %>" alt="Card image cap">

        <div class="card-body">
            <b><%= p.getpTitle() %></b>
         
            
        </div>
            <div class="card-footer primary-background mt-3 text-center">
                <a href="show_blog_page.jsp?post_id=<%= p.getPid()%>" class="btn-outline-light btn-sm">Read More</a>
                <a href="#!" class="btn-outline-light btn-sm"><i class="fa fa-thumbs-o-up">10</i></a>
                <a href="#!" class="btn-outline-light btn-sm"><i class="fa fa-commenting-o">20</i></a>

            </div>
    </div>
</div>
<%
    
    }

%>
</div>


