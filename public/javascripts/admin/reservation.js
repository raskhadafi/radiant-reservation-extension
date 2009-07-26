document.observe("dom:loaded", function() {

  $('a#new-reservation').observe('click', respondToClick);

});

function respondToClick(event) {
  var element = event.element();
  element.addClassName('active');
}
