$( document ).ready(function() {

	
	$('[data-toggle="popover"]').popover();
	
	$("#cad_cpf ").mask("999.999.999-99");
	$("#cad_cnpj ").mask("99.999.999/9999-99");
	$("#cad_cep ").mask("99999-999");
	
	
	$('html, body').animate({
        scrollTop: $("#div_scroll").offset().top
    }, 3000);
	
	$( "#div_cad_cnpj" ).hide();
	
	$( "#rb_tipo_anunciante_particular" ).click(function() {
		$( "#div_cad_cpf" ).show();		
		$( "#div_cad_cnpj" ).hide();
		$( "#div_cad_sexo" ).show();
	});
	
	$( "#rb_tipo_anunciante_profissional" ).click(function() {
		$( "#div_cad_cpf" ).hide();		
		$( "#div_cad_cnpj" ).show();
		$( "#div_cad_sexo" ).hide();
	});
	
   				
});//FIM DOCUMENT READY