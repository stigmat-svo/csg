$(".event-tools").ready(function(){
  // $('#subscribe').hide()
  // $('#subscribe-on').click(function(){
  //   $('#subscribe').slideToggle(500);
  //   $('#comments').hide()
  //   $('#gallery').hide()
  //   $('#map').hide()
  //   return false;
  // });
  //
  // $('#comments').hide()
  // $('#comment-on').click(function(){
  //   $('#comments').slideToggle(500);
  //   $('#subscribe').hide()
  //   $('#gallery').hide()
  //   $('#map').hide()
  //   return false;
  // });

  $('#gallery').hide()
  $('#gallery-on').click(function(){
    $('#gallery').slideToggle(500);
    $('#map').hide()
    return false;
  });

  $('#map').show()
  $('#map-on').click(function(){
    $('#map').slideToggle(500);
    $('#gallery').hide()
    return false;
  });
});
