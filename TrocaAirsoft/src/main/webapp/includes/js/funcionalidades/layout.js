/**
	@author andre.gomes
	Este arquivo JS tem o objetivo de manter somente a inicializa��o de todos os objetos e functions da p�gina em quest�o.
	----------------------------------------------------------------------------------------------------------------------------
	(function($){})(jQuery); - � UTILIZADO PARA QUE POSSAMOS EXTENDER AS FUN��ES JQUERY.

*/
(function($){ 
	
	
	/**
	 * Fun��o: $(document).ready(function()
	 * Tipo: JQUERY
	 * Objetivo: Todo o c�digo dentro desta fun��o ser� executado quando todos os elementos da p�gina estiverem carregados.
	 */
    $(document).ready(function(){

    	//TESTA SE O BROWSER � ORIUNDO DE UM DEVICE MOBILE	
    	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
    		$('html, body').stop().animate({
    			scrollTop: $('#tableBuscaProfissional').offset().top -280
    		},  1500, 'easeInOutExpo');
    	}
    	
    	$("#logo").show("drop", 1300);
    	
    	$(".telefone_fixo ").mask("(99) 9999-9999");
    	$(".telefone_celular").mask("(99) 99999-9999");

    	$(".combo_multi").multiselect({
    	   selectedList: 3
    	});
    	
    	
     	/**
     	 * Fun��o: ajaxSend 
     	 * Tipo: JQUERY / AJAX
     	 * Objetivo: Realiza alguma fun��o no momento em que um requisi��o AJAX � feita ao servidor.
     	 * */
     	 
         $(document).ajaxSend(function() {
   		     $(".loading_gif").show();
         });
         

      	/**
      	 * Fun��o: ajaxStop 
      	 * Tipo: JQUERY / AJAX
      	 * Objetivo: Realiza alguma fun��o no momento em que um requisi��o AJAX � retornada do servidor.
      	 */
      	 
         $(document).ajaxStop(function() {
             $(".loading_gif").hide();
         });
    	 
    	 /**---> Eventos: 'Click' 
    	 ------------------------- */
         
         $("#bt_entrar").click(function(){
        	 $(this).login("inicio");
    	 });
    	 
    });      /** FIM -  $(document).ready() **/
    
    
    /**
     * Fun��o: login(toAction)
     * Tipo: JQUERY / AJAX
     * Objetivo: 
     * 			
     */
     $.fn.extend({
    	 login:function(toActionPage) {

  		    $.ajax({
  		    		type:     "POST",
  		    		cache:    false ,  
  		    		async: 	  true,
  		    		dataType: 'json', 
  		    		url: 	  "login", 
  		    		data: 	  $('#form_login :input'),

		   			success: function(obj_retorno_ajax) {
		                           
		   				if (obj_retorno_ajax.tipoRetornado == "success") {
		   					$('#div_modal_login').modal('toggle');
		   					window.location.href = toActionPage;
		   				}
		   				else{
		   					$(this).exibir_mensagem({ mensagem:obj_retorno_ajax.exceptionRetornada,
		   											  container_mensagem:'#login_container_mensagem_erro',
		   											  paragrafo_mensagem:'#login_paragrafo_mensagem_erro' });
		   				}
		   			},
		          
		   			error: function(XMLHttpRequest, textStatus, errorThrown) {
		
		   				$(this).exibir_mensagem({ mensagem:("Ocorreu um erro interno: " + XMLHttpRequest.responseText),
								  				  container_mensagem:'#login_container_mensagem_erro',
								  				  paragrafo_mensagem:'#login_paragrafo_mensagem_erro' });
		   			}
    			});  
	 		}
 		});	
    
    
})(jQuery); /**	 FIM -  JQUERY  **/