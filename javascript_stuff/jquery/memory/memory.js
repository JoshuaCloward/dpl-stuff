// JEREMYS WAY
var selections = [];
$(function(){
  $('.card').click(function(){
    var $car = $(this);
    if($card.hasClass('face-down') && selections.length < 2) {
      $card.removeClass('face-down');
      $card.addClass('face-up');
      selections.push($card);
    }
    if(selections.length == 2) {
      window.setTimeout(function(){
        if(selections[0].text() == selections[1].text()){
          $(selections).each(function(i,card){
            $(card).replaceWith('<div> class="taken"></div>');
          });
        }
          $('.face-up').removeClass('face-up').addClass('face-down');
          selections = [];
        }, 800);
    }
  });
});

// MY ATTEMPT
var cache = '';
var check = 0;
$('.face-down').click(function()
  {
    var $card = $(this);
    if($card.hasClass('face-down'))
    {
      if(check == 1)
      {
        console.log($card.text());
        console.log(cache);
        if(cache != $card.text())
        {
          $card.toggleClass('face-up');
          $card.toggleClass('face-down');
          cache.toggleClass('face-up');
          cache.toggleClass('face-down');
          cache = '';
        }
        else
        {

        }
      check = 0
      }
      else
      {
      $card.toggleClass('face-down');
      $card.toggleClass('face-up');
      cache = $card.text();
      console.log(cache);
      check++;
      }
    }
    else
    {
      console.log('card is face up');
    }
  });
























// var table = $('<div class="table"></div>');
// var items = $('<div class="item"></div>');
//
//
//     $(items).css({
//       'width': '20px',
//       'height': '20px',
//       'border': '1px solid',
//       'margin': '10px',
//       'display': 'block'
//     });
//     $(table).css({
//       'display': 'block',
//       'margin' : '0 auto',
//       'width' : '980px'
//     });
// var check2 = 0;
// var check = 0;
// var tracker = 0;
// var counter = 0;
// var value = [];
// var body = $('.main-content');
// var number = '';
//
// for(var i = 0; i < 50; i++ ){
//   counter++;
//   number = counter.toString();
//   value.push(number);
//
// }
//
// for(var a = 0; a < 10; a++)
// {
//   if(a % 10 || a == 0){
//     if(tracker == 50){
//       tracker = 0;
//     }
//     body.append(table);
//     tracker++;
//   }
//   else{
//     console.log(this);
//     table.append(items);
//     tracker++;
//   }
// }
//
//
// // for(var a = 0; a < 10; a++)
// // {
//   if(check == 0)
//   {
//     body.prepend(table);
//     check = 1;
//     var holder = $(table);
//   }
//   else
//   {
//     holder.after(table);
//     table = holder;
//   }
//   for(var b=0;b< 10; b++)
//   {
//
//     if(tracker == 50){
//       tracker = 0;
//     }
//
//     if(check2 == 0)
//     {
//        console.log(value[tracker]);
//        table.append(items);
//        $(items).text = value[tracker];
//        console.log(items);
//        tracker++;
//        var holder2 = items;
//        check2 = 1;
//        console.log(holder2);
//        items.empty();
//      }
//      else{
//        console.log(holder2);
//        console.log(items);
//        holder2.after(items);
//        $(items).text = value[tracker];
//        tracker++;
//    }
//   }
// }
// $(value).each(function(index){
//   console.log(index);
//   index.push(counter);
//   counter++;
// })
