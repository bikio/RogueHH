$(document).on("click", "a", function() {
  $('html, body').animate({
    scrollTop: $(this.hash).position().top-90
  }, 1200);
  return false;
});

