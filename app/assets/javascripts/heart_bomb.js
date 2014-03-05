$(function(){
  
  var timeVar = setTimeout(function(){
    letThereBeHearts(50) 
  }, 500);
});

function randomColorHex(){
  return '#'+Math.floor((Math.random() * parseInt('ffffff', 16))).toString(16);
}

function letThereBeHearts(num_hearts){
  $(function() {
    for (var i=0; i<num_hearts; i++) {
      var newh1 = $("<h1 class='hearts' style='color: " + randomColorHex() + "' ;>&hearts;</h1>");
      $('#thanks').append(newh1);
    }
    $('.hearts').each(function(ind, element){
      $(element).animate({
        top: (Math.random()*100)+'%',
        left: (Math.random()*100)+'%',
        opacity: 0
      }, 1000, 'linear', 
        function(){
          $(this).remove();  
        })
    });
  });
}