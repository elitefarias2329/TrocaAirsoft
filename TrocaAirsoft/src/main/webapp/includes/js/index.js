$( document ).ready(function() {

	
	
	
	
	oTable = $('#tab_grid_result').dataTable({
		
		"bSort": true,
		"bSortClasses": false,
		"bProcessing": true,
		"bServerSide": false,
		"bLengthChange": true,
		"bDestroy": true,
		"sPaginationType": "full_numbers",
		//"sAjaxSource": "ajaxSource",
		"sServerMethod": "POST",
		
		//"aoColumns": [
			//null
		//],
						
		"oLanguage": {
			"sSearch": "Filtrar Resultado na Lista&nbsp;&nbsp;&nbsp;&nbsp;",
			"sInfo": "Mostrando _START_ at&eacute; _END_ de _TOTAL_ registros",
			"sInfoEmpty": "Mostrando 0 at&eacute; 0 de 0 registros",
			"sInfoFiltered": "(filtrado de _MAX_ registros totais)",
			"sLengthMenu": "Quantidade de itens a exibir _MENU_",
			"sLoadingRecords": "Carregando...",
			"sProcessing": "Processando...",
			"sZeroRecords": "Nenhum registro encontrado",
		 
			"oPaginate": {
		    		"sFirst": " Primeira ",
		    		"sLast": " &Uacute;ltima ",
		    		"sNext": " Pr&oacute;xima ",
		    		"sPrevious": " Anterior " 
		    }
		},
		
		//"fnDrawCallback": function( oSettings ) {
			//$(idDivExibicao).show();
		//}
		
	});
   				
   				
});//FIM DOCUMENT READYA