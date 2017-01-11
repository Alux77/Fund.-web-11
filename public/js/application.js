$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 

$('#form').submit(function()
  {
    event.preventDefault();
    var cadena = $(this).serialize();
      $.post('/abuelita', cadena, function(resp)
    {
      $('#resp').html(resp);

    });
      $('#text_in').val("");
  });
});
