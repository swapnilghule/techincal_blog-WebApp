$(document).ready(function (e){
    //add post
    $("#add-post-form").on("submit", function(event){
        //this code is called when form is submitted
        event.preventDefault();
        console.log("submittef add post");
        //get current form
        let form= new FormData(this);
        // now calling to server
        
        $.ajax({
            url : "AddPostServlet",
            type: "POST",
            data: form,
            success: function(data,textStatus,jqXHR)
            {
                //success
                console.log(data);
               if(data.trim()==="done")
               {
                   swal({
  title: "Good job!",
  text: "Saved Successfully!",
  icon: "success",
 
});
               }
            },
          error: function(jqXHR,textStatus,errorThrown)
            {
                         swal({
  title: "Error!",
  text: "Something went Wrong",
  icon: "error",
 
});
            },
            processData: false,
            contentType: false
        })
        
    })
})
    