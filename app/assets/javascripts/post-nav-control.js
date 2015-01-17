$(document).ready(function(){
    $(".toprow").scroll(function(){
      if( $(".toprow").scrollTop() == 0 )  {
       $(".tab-bar").removeClass("no-top-border");
       $(".tab-bar").addClass("top-border");
       $(".title-header").show();
      } else {
        $(".tab-bar").addClass("no-top-border");
       $(".tab-bar").removeClass("top-border");
        $(".title-header").hide();
      }
    });
})