$( document ).ready(function() {

	$("#logo").show("drop", 1300);
	
	
	$(".telefone_fixo ").mask("(99) 9999-9999");
	$(".telefone_celular").mask("(99) 99999-9999");

	$(".combo_multi").multiselect({
	   selectedList: 3
	});
	
	//TESTA SE O BROWSER É ORIUNDO DE UM DEVICE MOBILE	
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		$('html, body').stop().animate({
			scrollTop: $('#tableBuscaProfissional').offset().top -280
		},  1500, 'easeInOutExpo');
	}
});