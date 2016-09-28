// Challenge 10.1
// This javascript will let you show and hide data


$(".book-info").each(function() {
  var
    container = $(this),
    link = $('<a href="#" />').text("Show info");

  container.hide();
  container.after(link);

  link.on("click", function(event) {
    event.preventDefault();

    container.stop();

    if (container.is(":visible")) {
      container.slideUp();
      link.text("Show info");
    } else {
      container.slideDown();
      link.text("Hide info");
    }
  })
});
