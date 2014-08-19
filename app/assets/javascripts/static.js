$(function() {
  $('a').click(function() {
    $('html, body').animate({
      scrollTop: $(this.hash).position().top
    }, 1200);
    return false;
  });
});
