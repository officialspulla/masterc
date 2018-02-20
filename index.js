// Remove Items From Cart
$('a.remove').click(function(){
  event.preventDefault();
  $( this ).parent().parent().parent().hide( 400 );
 
})

// Just for testing, show all items
  $('a.btn.continue').click(function(){
    $('li.items').show(400);
  })

  $(document).ready(() => {
  
    // For the active state of product images on mouse hover
  	$('.itemImg').on('mouseenter', event => {
    $(event.currentTarget).addClass('itemImg-active')
  }).on('mouseleave', event => {
    $(event.currentTarget).removeClass('itemImg-active')
  })
  

  });