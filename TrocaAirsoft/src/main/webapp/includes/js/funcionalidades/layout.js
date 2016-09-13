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
    	
    	
    	/**
    	 * TODO: IMPLEMENTAR A BARRINHA DE LOADING *** USAR A DO BOOTSTRAP
    	 * **/
    	
     	/**
     	 * Função: ajaxSend 
     	 * Tipo: JQUERY / AJAX
     	 * Objetivo: Realiza alguma função no momento em que um requisição AJAX é feita ao servidor.
     	 
         $("#barra_carregando").ajaxSend(function() {
   		     $("#barra_carregando").show();
         });
         */

      	/**
      	 * Função: ajaxStop 
      	 * Tipo: JQUERY / AJAX
      	 * Objetivo: Realiza alguma função no momento em que um requisição AJAX é retornada do servidor.
      	 
         $("#barra_carregando").ajaxStop(function() {
             $("#barra_carregando").hide();
         });
         */
    	 
    	 
    	 /**---> Eventos: 'Click' 
    	 ------------------------- */
         
         $("#bt_entrar").click(function(){
        	 $(this).login();
    	 });
    	 
    });      /** FIM -  $(document).ready() **/
    
    
    /**
     * Função: efetivar_percentuais
     * Tipo: JQUERY / AJAX
     * Objetivo: Atualiza as Datas de Efetivação dos percentuais selecionados na tabela PERC_AUTOM_CONTR_RSSRO.
     * 			
     */
     $.fn.extend({
    	 login:function() {

  		    $.ajax({
  		    		type:     "POST",
  		    		cache:    false ,  
  		    		async: 	  false, 
  		    		dataType: 'json', 
  		    		url: 	  "login", 
  		    		data: 	  $('#form_login :input'),

   			success: function(obj_retorno_ajax) {
                           
   				if (obj_retorno_ajax.tipoRetornado == "success") {
   					
   					alert("sucesso");
   					
//   					$(this).exibir_mensagem({ mensagem:obj_retorno_ajax.objetoRetornado,
//							  					  tabela_mensagem:'#tbl_msg_sucesso',
//							  					  td_mensagem:'#td_msg_sucesso' });
//   					
   					
   				}
   				else{
   					alert("erro");
//   					$(this).exibir_mensagem({ mensagem:obj_retorno_ajax.exceptionRetornada,
//   											  tabela_mensagem:'#tbl_msg_erro',
//   											  td_mensagem:'#td_msg_erro' });
   				}
              
   			},
          
   			error: function(XMLHttpRequest, textStatus, errorThrown) {

   				alert(XMLHttpRequest.responseText);
   				
//   				$(this).exibir_mensagem({ mensagem:("Ocorreu um erro interno: " + XMLHttpRequest.responseText),
//   									      tabela_mensagem:'#tbl_msg_erro',
//            	  				              td_mensagem:'#td_msg_erro' });
   			}
   			
		      });  
			
    	 }
     });
    
    
})(jQuery); /**	 FIM -  JQUERY  **/