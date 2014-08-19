$(function() {
  $('a').click(function() {
    $('html, body').animate({
      scrollTop: $(this.hash).position().top
    }, 1000);
    return false;
  });
});