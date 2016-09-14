/**
 * (function($){})(jQuery); - É UTILIZADO PARA QUE POSSAMOS EXTENDER AS FUNÇÕES JQUERY.
 *  $.fn.extend({}); 		- É UTILIZADO PARA GARANTIR O USO DAS FUNÇÕES JQUERY SEM QUE HAJA CONFLITOS COM OUTRAS.
 */
(function($){ 
	
	
	/**
	 * Função: exibir_mensagem
	 * Tipo: JQUERY 
	 * Objetivo: Escreve uma mensagem numa TD de uma TABLE e a exibe
	 * @param options.mensagem 		  - Mensagem que será exibida.
	 * @param options.tabela_mensagem - Tabela que será mostrada.
	 * @param options.td_mensagem 	  - TD correspondente à tabela que será mostrada.
	 * PS: O uso da variável 'defaults'  é somente para facilitar a compreensão,todos
	 * 	   os valores devem ser informados na chamada da função.
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
	 * Função: ocultar_mensagem
	 * Tipo: JQUERY 
	 * Objetivo: Escreve uma mensagem numa TD de uma TABLE e a exibe
	 * @param options.tabela_mensagem - Tabela que será oculta.
	 * @param options.td_mensagem 	  - TD correspondente à tabela que será oculta.
	 * PS: O uso da variável 'defaults' é somente para facilitar a compreensão,todos
	 * 	   os valores devem ser informados na chamada da função.
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
     * Função: esconder_msg_todas() 
     * Tipo: JQUERY 
     * Objetivo: Esconde todas as tabelas de mensagens e limpa seus respectivos conteúdos.
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