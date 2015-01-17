$(document).ready(function(){
    $(".toprow").scroll(function(){
      if( $(".toprow").scrollTop() == 0 )  {
       $(".tab-bar").removeClass("no-top-border");
       $(".tab-bar").addClass("top-border");
      } else {
        $(".tab-bar").addClass("no-top-border");
       $(".tab-bar").removeClass("top-border");
        
      }
    });
})