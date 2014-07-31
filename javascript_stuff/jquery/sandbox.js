
$(document).ready(function(){
  // this runs when the document is ready
  console.log('document now ready');

var sandbox = $('#sandbox');
console.log(sandbox.text());
sandbox.css({
    'color': '#ff0000',
    'border': '1px solid #ff0000',
    'padding': '10px',
    'background-color': '#ffeeee'
  });
  window.setTimeout(function(){ // does these things after specific amount of time
    console.log('timeout fired'); // prints out timeout fired in console
    sandbox.text('ZOMG!'); // changes text to zomg
    var bigText = $('<h1></h1>');
    bigText.text('BOOM!');
    sandbox.append(bigText);
    sandbox.animate({
      'width': '50%'
    }, 1500);
  },2500); // 2.5 seconds is the specific time



  var light = $('<div></div>');
  light.css({

    'width': '40px',
    'height': '40px',
    'padding': '10px',
    'border-radius': '50%',
    'background-color': 'green'


  });
  sandbox.after(light);
  light.data('switch', 'on');

  light.click(function()
  {
    var switchState = $(this).data('switch');

    if(switchState == 'on')
    {
      // $(this).data('switch', 'off');
      // $(this).animate({
      //   'width': '100%'
      // }, 1500);
      $(this).css({'background-color': 'red',
      'float': 'left'
      });
      // $(this).animate({
      //   'width': '40px'
      // }, 1500);
      $(this).animate({
        'left': ($(window).width() -40) + 'px'
      }, 1500);
    }
    else
    {
      // $(this).data('switch', 'on');
      // $(this).animate({
      //   'width': '100%'
      // }, 1500);
      $(this).css({'background-color': 'green',
      'float': 'left'
      });
      $(this).animate({
        'left': '0px'
      }, 1500);
      // $(this).animate({
      //   'width': '40px'
      // }, 1500);
    }
  });


  $(':text').blur(function(){
    sandbox.text($(this).val());
  });

  $(':text').focus(function() {
    $(this).val('');
  });

  $('#linkarea a').click(function() {
    //event.preventDefault();
     console.log($(this).attr('href'));
     return false;
  });
  // bind a click to all a.switch that currently
  // exist in the DOM.
  // $('a.switch').click(function(){
  //   light.click();
  //   return false;
  // });
  // bind a click to all a.switch even future ones
  // append to the dom
  $(document).on('click', 'a.switch', function(){
    light.click();
    return false;
  });

  var newSwitch = $('<a href="#" class="switch">Switch</a>');
  sandbox.after(newSwitch);
  newSwitch.css({

  });

// $(':text').blur(function(){
//   sandbox.text($(this).val());
// });

var selection = $('#language');

$(selection).change(function(){
  console.log(this);
  sandbox.text($(this).val());
});

});
