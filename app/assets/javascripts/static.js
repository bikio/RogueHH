$(document).on("click", "a", function() {
  $('html, body').animate({
    scrollTop: $(this.hash).position().top-90
  }, 1200);
  return false;
});

// window.onscroll = function() {
// document.body.style.backgroundPosition = ”0“ + (-(window.pageYOffset / 2)) + ”px”;
// }


// $(window).scroll(function(e) {
//     var s = $(window).scrollTop(),
//         opacityVal = (s / 150.0);

//     $('.blur img').css('opacity', opacityVal);
// });

// $(window).scroll ->
//   oVal = ($(window).scrollTop() / 240)
//   $(".blur").css "opacity", oVal


// $(document).ready(function () {
//     $(".logohead").hide();
//     $(".logohead").bind("load", function () { $(this).fadeIn(4000); });
// return false;
//   });
// $(document).ready(function () {
//     $(".img-responsive").hide();
//     $(".img-responsive").bind("load", function () { $(this).fadeIn(3000); });
// return false;
//   });

