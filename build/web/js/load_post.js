function getPosts(catId,temp)
{
    $("#loader").show();
    $("#post-container").hide();
    $(".c-link").removeClass('active');

    $.ajax({
        url : "load_post.jsp",
        data:{cid : catId},
        success: function(data,textStatus,jqXHR)
        {
            console.log(data);
            
            $("#loader").hide();
            $("#post-container").show();
            $("#post-container").html(data);
            $(temp).addClass('active');
            
        }
    })
}
$(document).ready(function (e)
{
    getPosts(0)
})
