/**
	@author andre.gomes
	Este arquivo JS tem o objetivo de manter somente a inicialização de todos os objetos e functions da página em questão.
	----------------------------------------------------------------------------------------------------------------------------
	(function($){})(jQuery); - É UTILIZADO PARA QUE POSSAMOS EXTENDER AS FUNÇÕES JQUERY.

*/
(function($){ 
	
	
	/**
	 * Função: $(document).ready(function()
	 * Tipo: JQUERY
	 * Objetivo: Todo o código dentro desta função será executado quando todos os elementos da página estiverem carregados.
	 */
    $(document).ready(function(){

    	//TESTA SE O BROWSER É ORIUNDO DE UM DEVICE MOBILE	
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
     	 * Função: ajaxSend 
     	 * Tipo: JQUERY / AJAX
     	 * Objetivo: Realiza alguma função no momento em que um requisição AJAX é feita ao servidor.
     	 * */
     	 
         $(document).ajaxSend(function() {
   		     $(".loading_gif").show();
         });
         

      	/**
      	 * Função: ajaxStop 
      	 * Tipo: JQUERY / AJAX
      	 * Objetivo: Realiza alguma função no momento em que um requisição AJAX é retornada do servidor.
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
     * Função: login(toAction)
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