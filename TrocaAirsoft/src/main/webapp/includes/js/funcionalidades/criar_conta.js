$( document ).ready(function() {

	$('[data-toggle="tooltip"]').tooltip();
	
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
	
   				
});//FIM DOCUMENT READYA