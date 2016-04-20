$(function(){
  $(window).scroll(function(){
      if ($(window).scrollTop() >= 300) {
        $('nav').addClass('fixed-header');
        $('nav h2').text('Family Gozleme');
        $('nav h2').animate({opacity: '1'}, 1000);
        $('nav ul li .color').css('color', 'red');
        $('nav ul').addClass('fixed-nav');
      }

      else {
         $('nav').removeClass('fixed-header');  
         $('nav h2').text('');
         $('nav h2').css('opacity', '0');
         $('.color').css('color', 'white');
         $('nav ul').removeClass('fixed-nav');
      }
  });
});

