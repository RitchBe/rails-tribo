//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require flatpickr
//= require gmaps/google
//= require turbolinks
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

