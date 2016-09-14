/**
 * (function($){})(jQuery); - � UTILIZADO PARA QUE POSSAMOS EXTENDER AS FUN��ES JQUERY.
 *  $.fn.extend({}); 		- � UTILIZADO PARA GARANTIR O USO DAS FUN��ES JQUERY SEM QUE HAJA CONFLITOS COM OUTRAS.
 */
(function($){ 
	
	
	/**
	 * Fun��o: exibir_mensagem
	 * Tipo: JQUERY 
	 * Objetivo: Escreve uma mensagem numa TD de uma TABLE e a exibe
	 * @param options.mensagem 		  - Mensagem que ser� exibida.
	 * @param options.tabela_mensagem - Tabela que ser� mostrada.
	 * @param options.td_mensagem 	  - TD correspondente � tabela que ser� mostrada.
	 * PS: O uso da vari�vel 'defaults'  � somente para facilitar a compreens�o,todos
	 * 	   os valores devem ser informados na chamada da fun��o.
	 */
    $.fn.extend({

    	exibir_mensagem: function(options) {
           
            var defaults = {
                mensagem : 'Minha mensagem',
                container_mensagem : '#tbl_mensagem_exemplo',
                paragrafo_mensagem : '#td_mensagem_exemplo'
            };
        
            var opt =  $.extend(defaults, options);

            $(opt.paragrafo_mensagem).html(opt.mensagem);
            $(opt.container_mensagem).show();

            /** sobe a pagina pro topo com uma animacao do tipo 'fade' **/
            $( 'html, body' ).animate( { scrollTop: 0 }, 'slow' );  

        }
    });
	
	
	/**
	 * Fun��o: ocultar_mensagem
	 * Tipo: JQUERY 
	 * Objetivo: Escreve uma mensagem numa TD de uma TABLE e a exibe
	 * @param options.tabela_mensagem - Tabela que ser� oculta.
	 * @param options.td_mensagem 	  - TD correspondente � tabela que ser� oculta.
	 * PS: O uso da vari�vel 'defaults' � somente para facilitar a compreens�o,todos
	 * 	   os valores devem ser informados na chamada da fun��o.
	 */
    $.fn.extend({

    	ocultar_mensagem: function(options) {
           
            var defaults = {
                tabela_mensagem : '#tbl_mensagem_exemplo',
                td_mensagem : '#td_mensagem_exemplo'
            };
        
            var opt =  $.extend(defaults, options);

            $(opt.td_mensagem).html("");
            $(opt.tabela_mensagem).hide();

        }
    });
    
    
    /**
     * Fun��o: esconder_msg_todas() 
     * Tipo: JQUERY 
     * Objetivo: Esconde todas as tabelas de mensagens e limpa seus respectivos conte�dos.
     */
    $.fn.extend({

    	esconder_msg_todas: function() {
           
	        $(this).ocultar_mensagem({ tabela_mensagem:'#tbl_msg_erro',
	        						   td_mensagem:'#td_msg_erro' });

	        $(this).ocultar_mensagem({ tabela_mensagem:'#tbl_msg_sucesso',
	        						   td_mensagem:'#td_msg_sucesso' });

	        $(this).ocultar_mensagem({ tabela_mensagem:'#tbl_msg_resultado_vazio',
	        						   td_mensagem:'#td_msg_resultado_vazio' });
        }
    });

})(jQuery); //FIM JQUERY