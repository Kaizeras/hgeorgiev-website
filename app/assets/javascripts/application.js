// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require jquery.cookie
//= require_tree .
//= require jquery-ui

$(document).ready(function () { 

 if ($.cookie('closed')) {
        $('.slide-header').css('marginLeft' , '5%');
        $('header').css('width' , '5%');
        $('#content').css({width: '94.99%' , marginLeft: '5%'});
        $('.author').hide();
     } else if($.cookie('open')) {
        $('.slide-header').css('marginLeft' , '18%');
        $('header').css('width' , '18%');
        $('#content').css({width: '81.99%' , marginLeft: '18%'});
        $('.author').show();
     };

  $('.slide-header').click(function(){

   if($('header')[0].style.width == '5%')  {
    $.removeCookie('closed', { path: '/' });
    $('.slide-header').animate({marginLeft: "18%"}, 250 )
    $('header').animate({ width: '18%' } , 250 )
    $('.author').fadeIn(100);
    $('#content').animate({ width: '81.99%', marginLeft: '18%' } , 250 )
    $.cookie('open' , 'open' , { path: '/' });
  }
   else if($('header')[0].style.width == '18%') {
    $.removeCookie('open' , { path: '/' });
    $('.slide-header').animate({ marginLeft: "5%" }, 250)
    $('header').animate({ width: '5%' } , 250 )
    $('.author').fadeOut(100);
    $('#content').animate({ width: '94.99%', marginLeft: '5%' } , 250 )
     $.cookie('closed' , 'closed' , { path: '/' });
   }
   });

});



