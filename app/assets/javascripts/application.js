//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require flatpickr
//= require gmaps/google

//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require rails_emoji_picker
//= require attachinary
//= require_tree ./app



// app/assets/javascripts/init_attachinary.js
$(document).ready(function() {
  $('.attachinary-input').attachinary();
  $('.private-message-list').scrollTop($('.private-message-list').height());

});



function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];

  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}

function scrollLastPrivateMessageIntoView() {
  const messages = document.querySelectorAll('.private-message-author');
  const lastMessage = messages[messages.length - 1];

  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}

window.sr = ScrollReveal({ reset: false });
sr.reveal('.gallery__image_left',{ duration: 1200, distance: '600px', origin: 'left'}, 500);
sr.reveal('.gallery__image_right',{ duration: 1200, distance: '600px', origin: 'right', delay: 300}, 300);
// sr.reveal('.cta', { duration: 1000 });
// sr.reveal('.lead', { duration: 1000 });
sr.reveal('.feature', { duration: 1000 ,distance: '500px', origin: 'bottom'}, 200);
sr.reveal('.spotlight', { duration: 1000, distance: '500px', origin: 'left' });
sr.reveal('.btn-landing', { duration: 1000, distance: '500px', origin: 'right'});
sr.reveal('.private-message-sender', { duration: 1000 }, 200);
sr.reveal('.private-message-receiver', { duration: 1000 }, 200);



$(document).ready(function(){
  $('a[href^="#"]').on('click',function (e) {
      e.preventDefault();

      var target = this.hash;
      var $target = $(target);

      $('html, body').stop().animate({
          'scrollTop': $target.offset().top
      }, 900, 'swing', function () {
          window.location.hash = target;
      });
  });
});
