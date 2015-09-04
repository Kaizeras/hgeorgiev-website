$(document).ready(function() {

  $('.pseudo-desc').change( function() {
    $('.real-desc').val(  $('.pseudo-desc').val())


    });

  $('.pseudo-title').change( function() {
    $('.real-title').val(  $('.pseudo-title').val())

    });

  });


  $(function() {
  $('form[data-update-target]').on('ajax:success', function(evt, data) {
    var target = $(this).data('update-target');
    $('#' + target).html(data);
  });
});
