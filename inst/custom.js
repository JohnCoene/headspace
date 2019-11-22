Shiny.addCustomMessageHandler('headspace-init', function(opts) {
  var element = document.querySelector(opts.el);
  
  if(opts.el == 'nav')
    element.className += ' navbar-fixed-top';

  var headspace = new Headroom(element);
  headspace.init();
});