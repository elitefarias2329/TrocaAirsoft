<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Troca Airsoft</title>

	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="">

    <title>Minha Obra</title>

    <!--CSS -->
    <link href="includes/css/css.css" rel="stylesheet">
    <link href="includes/css/bootstrap.css" rel="stylesheet">
    <link href="includes/css/normalize.css" rel="stylesheet">
    <link href="includes/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="includes/css/jquery-ui.structure.css" rel="stylesheet">
    <link href="includes/css/jquery-ui.theme.css" rel="stylesheet">
    <link href="includes/css/dataTables.css" rel="stylesheet">
    <link href="includes/css/jquery.multiselect.css" rel="stylesheet">
    

    <!-- jQuery -->
    <script src="includes/js/jquery.js"></script>
    <script src="includes/js/jquery-ui.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="includes/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->     
   	<script src="includes/js/jquery.easing.1.3.js"></script>
    <script src="includes/js/classie.js"></script>
    <script src="includes/js/cbpAnimatedHeader.js"></script>
    <script src="includes/js/jquery.multiselect.js"></script>
    <script src="includes/js/jquery.dataTables.js"></script>
       	
       	
       	<script type="text/javascript">

   			$( document ).ready(function() {

   				$("#logo").show("drop", 1300);
   				
   				$("#combo_local").multiselect({
   				   show: ["explode", 500],
   				   hide: ["explode", 1000],
   				   selectedList: 3
   				});

   				$("#combo_marcador").multiselect({
    			   show: ["explode", 500],
    			   hide: ["explode", 1000],
    			   selectedList: 3
    			});

   				$("#combo_acessorios").multiselect({
     			   show: ["explode", 500],
     			   hide: ["explode", 1000],
     			   selectedList: 3
     			});

   				$("#combo_loadout").multiselect({
      			   show: ["explode", 500],
      			   hide: ["explode", 1000],
      			   selectedList: 3
      			});

   				$("#combo_upgrade").multiselect({
       			   show: ["explode", 500],
       			   hide: ["explode", 1000],
       			   selectedList: 3
       			});

   				$("#combo_outros").multiselect({
        		   show: ["explode", 500],
        		   hide: ["explode", 1000],
        		   selectedList: 3
        		});

   				
   				
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
   				
   				//TESTA SE O BROWSER É ORIUNDO DE UM DEVICE MOBILE	
   				if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
   					$('html, body').stop().animate({
   						scrollTop: $('#tableBuscaProfissional').offset().top -280
   					},  1500, 'easeInOutExpo');
   				}
   				

   				
			});
       		
       	</script>
	
	</head>

	<body>
	
		<!-- ************************************************************************************************** -->
        <!-- BARRA DE NAVEGAÇÃO -->
        <!-- ************************************************************************************************** -->

		<div id="page-top">&nbsp;</div>

		<nav class="navbar navbar-default navbar-fixed-top barra_navegacao">
			<div class="container-fluid">

				<div id="div_toggle" class="navbar-header">
				
    				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
	                </button>
                    
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
                <ul class="nav navbar-nav">
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Home</a></li>
        			
        			<li class="dropdown">
          				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
          					<i class="fa fa-crosshairs"></i> 
          					O Esporte
          					<span class="caret"></span>
          				</a>
          				
          				<ul class="dropdown-menu">
            				<li><a href="#"><i class="fa fa-long-arrow-right"></i> O que é Airsoft?</a></li>
            				<li><a href="#"><i class="fa fa-long-arrow-right"></i> Legislação</a></li>
            				<li><a href="#"><i class="fa fa-long-arrow-right"></i> Dicionário</a></li>
            				<li><a href="#"><i class="fa fa-long-arrow-right"></i> Dicas</a></li>
				            
          				</ul>
        			</li>
        			
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Parceiros</a></li>
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Armeiros</a></li>
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Pintura e Camuflagem</a></li>
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Aluguel de Equipamento</a></li>
					<li><a href="#"><i class="fa fa-crosshairs"></i> Times</a></li>
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Eventos</a></li>
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Vídeos</a></li>
        			
        			<li><a href="#"><i class="fa fa-crosshairs"></i> Fale Conosco</a></li>
        		</ul>	
				</div>
          </div>
        </nav>
		
		<!-- ************************************************************************************************** -->
        <!--  FIM BARRA DE NAVEGAÇÃO -->
        <!-- ************************************************************************************************** -->

	
        
        <!-- ************************************************************************************************** -->
	   	<!-- HEADER FUNDO IMAGEM -->
		<!-- ************************************************************************************************** -->    
	  
        <div class="main_header">
			<div class="container-fluid">
	        	<div class="row">
	        		
	        		<div id="div_logo" class="col-lg-3">
					    <img id="logo"  alt="Troca Airsoft" title="Troca Airsoft" src="includes/img/logo.png"  style="display:none;">
					    <p class="logo_frase">"Airsoft com Economia!"</p> 	
					</div>
					
					<div class="col-lg-9" style="text-align:right;">
						<a href="#" class="login_criar_conta"><i class="fa fa-user"></i> Login</a>
						<a href="#" class="login_criar_conta"><i class="fa fa-user-plus"></i> Criar Conta</a>
					</div>
					
	        	</div>
	        </div>	
        </div>   

	     <!-- ************************************************************************************************** -->
	     <!-- FIM HEADER FUNDO IMAGEM -->
	     <!-- ************************************************************************************************** -->
	     
	     
	        
	  
		<div class="container-fluid">
        	
        	<!-- ************************************************************************************************** -->
	   		<!-- DIV'S DESTAQUE PREMIUM -->
			<!-- ************************************************************************************************** -->
        	<div class="row" style="width:30%;float:left;">
        		<div class="col-lg-11 div_equip div_destaque_premium" >
        			<p><i class="fa fa-star"></i>&nbsp;Destaques</p>
        		</div>	
        	</div>
        	<!-- ************************************************************************************************** -->
	   		<!-- FIM DIV'S DESTAQUE PREMIUM -->
			<!-- ************************************************************************************************** -->
        	
        
        	<!-- ************************************************************************************************** -->
	   		<!-- DIV'S TROCA EQUIPAMENTO -->
			<!-- ************************************************************************************************** -->
        
        	<div class="row" style="width:70%;float:right;">
        		
	        	<div class="row">
		        	
		        	<div class="col-lg-5 div_equip">
					    <p><i class="fa fa-exchange"></i>&nbsp;Tenho Equipamento para Trocar</p>
					    <div align="center">
					    	<button class="bt_acao"><i class="fa fa-bullhorn"></i>&nbsp;Anunciar</button>
					    </div>
					    <br/>
					    <font>* Para anunciar seu equipamento para trocar, você deve estar logado.</font>
					    <br/><br/>
					    <font>* Caracterize o produto de maneira realista, pois informações fiéis atuam em benfício de todos.</font>
					</div>
				
				
				
					<div class="col-lg-6 div_equip">        	
						<p><i class="fa fa-binoculars"></i>&nbsp;Desejo Encontrar Algum Equipamento</p>
						
						<table class="table_grupo_filtro">
							<tr>
								<td>
									<font>Local:</font>
								</td>
								<td>
									<select multiple id="combo_local">
										<option value="1">Rio de Janeiro</option>
			                            <option value="2">São Paulo</option>
			                            <option value="3">Minas Gerais</option>
			                        </select>
								</td>
							</tr>
							
							<tr>
								<td>
									<font>Marcador:</font>
								</td>
								<td>
									<select multiple id="combo_marcador">
										<optgroup label="Sistema de Disparo">
											<option value="1">Elétrica (AEG/AEP)</option>
			                            	<option value="2">Gás (GBB)</option>
										</optgroup>
										
										<optgroup label="Marca">
											<option value="4">King Arms</option>
			                            	<option value="5">ARES</option>
			                            	<option value="5">Echo1</option>
			                            	<option value="5">Krytac</option>
			                            	<option value="5">APS</option>
			                            	
										</optgroup>
										
										<optgroup label="Modelo">
											<option value="4">M4</option>
			                            	<option value="5">AK</option>
										</optgroup>
										
			                           <optgroup label="Características">
			                            	<option value="6">Full Metal</option>
			                            	<option value="7">Semi Metal</option>
			                            	<option value="8">BlowBack</option>
			                            </optgroup>
			                        </select>  
								</td>
							</tr>
							
							<tr>
								<td>
									<font>Loadout:</font>
								</td>
								<td>
									<select multiple id="combo_loadout">
										<option value="1">Óculos de Proteção</option>
										<option value="2">Máscara</option>
										<option value="3">Luva</option>
										<option value="4">Farda Completa</option>
										<option value="5">Calça</option>
										<option value="6">Gandola</option>
										<option value="7">Camisa Tática</option>
										<option value="7">Cuturno/Bota</option>
			                        </select>  
								</td>
							</tr>
							
							<tr>
								<td>
									<font>Acessórios:</font>
								</td>
								<td>
									<select multiple id="combo_acessorios">
										<option value="1">Red Dot</option>
										<option value="2">Protetor de Red Dot</option>
										<option value="3">Luneta</option>
										<option value="4">Trilho 22mm</option>
										<option value="5">Mount</option>
										<option value="6">Lanterna</option>
										<option value="7">Laser</option>
			                        </select>  
								</td>
							</tr>
							
							<tr>
								<td>
									<font>Upgrade:</font>
								</td>
								<td>
									<select multiple id="combo_upgrade">
										<option value="1">Mola</option>
										<option value="2">Cilindro</option>
										<option value="4">Cabeça de Cilindro</option>
										<option value="3">Pistão</option>
										<option value="4">Cabeça de Pistão</option>
										<option value="5">Cano de Precisão</option>
										<option value="6">Hop-up</option>
										<option value="7">Air Nozzle</option>
										<option value="7">Bucking</option>
										<option value="7">Fiação</option>
										<option value="7">Motor</option>
			                        </select>  
								</td>
							</tr>
							
							<tr>
								<td>
									<font>Outros:</font>
								</td>
								<td>
									<select multiple id="combo_outros">
										<option value="1">BB's 0.20g</option>
										<option value="1">BB's 0.25g</option>
										<option value="4">Alvo</option>
										<option value="3">Patch</option>
			                        </select>  
								</td>
							</tr>
							
						</table>
						
						<br/>
						
						<div>
							<font><input type="checkbox"  class="checkbox-inline"/> Novo</font>
							&nbsp;&nbsp;
							<font><input type="checkbox"  class="checkbox-inline"/> Usado</font>
							&nbsp;&nbsp;
							<font><input type="checkbox"  class="checkbox-inline"/> Venda e Troca</font>
							&nbsp;&nbsp;
							<font><input type="checkbox"  class="checkbox-inline"/> Somente Venda</font>
						</div>
						
						<div align="center">
					    	<button class="bt_acao"><i class="fa fa-search"></i>&nbsp;Procurar</button>
					    </div>
						
					</div>
	        	</div>
			    <!-- ************************************************************************************************** -->
			    <!-- FIM DIV'S TROCA EQUIPAMENTO -->
			    <!-- ************************************************************************************************** -->  
	        	
	        	<div class="row">
				<!-- ************************************************************************************************** -->
	     		<!-- TABLE GRID RESULTADO PESQUISA -->
	     		<!-- ************************************************************************************************** -->
	    
	    		<br/>
	    		<br/>  
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12" style="text-align:center;" >
							<table id="tab_grid_result" class="table" style="width:96% !important;">
								
								<thead style="display:none;">
									<tr>
		        	                	<th>Foto</th>
		                                <th>Infos Marcador</th>
		                                <th>Infos Anunciante</th>
		                            </tr>
								</thead>
					     		
					     		<tbody>
						     		
						     		<tr>
						     			<td class="tab_grid_result_td_aeg_thumb">
						     				<img alt="M4" title="M4" src="includes/thumbnail/g36_thumb_160x160.jpg">
						     			</td>
						     			
						     			<td>
						     				<a href="#" class="tab_grid_result_td_aeg_title_link">G36 - AEG - Full Metal</a>
						     					<br/>
							     				<font class="tab_grid_result_td_aeg_marca">Echo1</font>
						     					<br/>
							     				<font class="tab_grid_result_td_aeg_preco">R$:1.750,00</font>
						     					<br/>
						     					Novo / Somente Venda
						     					
						     			</td>
						     			
						     			<td>
						     				<font class="tab_grid_result_td_aeg_anunciante">André Farias</font>
						     				<br/>
						     				<i>Rio de Janeiro / Rio de Janeiro</i>
						     				
						     				<br/><br/>
						     				<a class="tab_grid_result_td_aeg_lista_desejos"><i class="fa fa-plus-circle"></i>&nbsp;Lista de Desejos</a>	
						     			</td>
						     		</tr>
						     		
						     		<tr>
						     			<td class="tab_grid_result_td_aeg_thumb">
						     				<img alt="M4" title="M4" src="includes/thumbnail/glock_thumb_160x160.jpg">
						     			</td>
						     			
						     			<td>
						     				<a href="#" class="tab_grid_result_td_aeg_title_link">Glock CM121 - AEP - Semi Metal</a>
						     					<br/>
							     				<font class="tab_grid_result_td_aeg_marca">Cyma</font>
						     					<br/>
							     				<font class="tab_grid_result_td_aeg_preco">R$:999,00</font>
						     					<br/>
						     					Novo / Somente Venda
						     					
						     			</td>
						     			
						     			<td>
						     				<font class="tab_grid_result_td_aeg_anunciante">Guilherme Moreno</font>
						     				<br/>
						     				<i>São Gonçalo / Rio de Janeiro</i>
						     				<br/><br/>
						     				<a class="tab_grid_result_td_aeg_lista_desejos"><i class="fa fa-plus-circle"></i>&nbsp;Lista de Desejos</a>
						     			</td>
						     		</tr>
						     		
						     		<tr>
						     			<td class="tab_grid_result_td_aeg_thumb">
						     				<img alt="Tavor" title="Tavor" src="includes/thumbnail/tavor_thumb_160x160.jpg">
						     			</td>
						     			
						     			<td>
						     				<a href="#" class="tab_grid_result_td_aeg_title_link">Tavor (TAR 21) - AEG - Semi Metal</a>
						     				<br/>
						     				<font class="tab_grid_result_td_aeg_marca">Ares</font>
						     				<br/>
						     				<font class="tab_grid_result_td_aeg_preco">R$:1.999,00</font>
						     				<br/>
						     				Usado / Venda e Troca
						     			</td>
						     			
						     			<td>
						     				<font class="tab_grid_result_td_aeg_anunciante">Dilan Santos</font>
						     				<br/>
						     				<i>São Gonçalo / Rio de Janeiro</i>
						     				<br/><br/>
						     				<a class="tab_grid_result_td_aeg_lista_desejos"><i class="fa fa-plus-circle"></i>&nbsp;Lista de Desejos</a>	
						     			</td>
						     		</tr>
						     		
						     		<tr>
						     			<td class="tab_grid_result_td_aeg_thumb">
						     				<img alt="M4" title="M4" src="includes/thumbnail/m4_thumb_160x160.jpg">
						     			</td>
						     			
						     			<td>
						     				<a href="#" class="tab_grid_result_td_aeg_title_link">M4 - AEG - Full Metal - BlowBack</a>
						     				<br/>
						     				<font class="tab_grid_result_td_aeg_marca">King Arms</font>
						     				<br/>
						     				<font class="tab_grid_result_td_aeg_preco">R$:1.500,00</font>
						     				<br/>
						     				Usado / Venda e Troca	
						     			</td>
						     			
						     			<td>
						     				<font class="tab_grid_result_td_aeg_anunciante">Thiago Silva</font>
						     				<br/>
						     				<i>Niterói / Rio de Janeiro</i>
											<br/><br/>
						     				<a class="tab_grid_result_td_aeg_lista_desejos"><i class="fa fa-plus-circle"></i>&nbsp;Lista de Desejos</a>	
						     			</td>
						     		</tr>
					     		</tbody>
				     		</table>
						</div>
					</div>
		        </div>		
			    <!-- ************************************************************************************************** -->
			    <!-- FIM TABLE GRID RESULTADO PESQUISA -->
			    <!-- ************************************************************************************************** -->
	       	    </div>	
        	</div>
        </div>	

		 
	    <!-- ************************************************************************************************** -->
		<!-- SOBRE NÓS-->
	 	<!-- ************************************************************************************************** -->
		<div class="row bg-primary sobre_nos">
      
	        <div class="col-lg-12 sobre_nos_title">
                      <h1>Sobre Nós</h1>
                  </div>
      
                  <div class="col-lg-6">
                      <h3>Nossa História</h3>
                      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut 	
                          wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure
                          dolor in hendrerit in vulputate velit esse molestie consequat.</p>
                  </div>                
      
                  <div class="col-lg-6">
                      <h3>Nossa Missão</h3>
                      <p style="">
                          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut 	
                          wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure
                          dolor in hendrerit in vulputate velit esse molestie consequat.
                      </p>
                  </div>
                  
                  <div class="col-lg-6">
                      <h3>Na Rede</h3>
      
                      <ul class="list-inline sobre_nos_narede">
                          <li>
                              <a href="#" class=""><i class="fa fa-fw fa-facebook"></i></a>
                          </li>
                          
                          <li>
                              <a href="#" class=""><i class="fa fa-fw fa-google-plus"></i></a>
                          </li>
                          
                          <li>
                              <a href="#" class=""><i class="fa fa-fw fa-twitter"></i></a>
                          </li>
                          
                          <li>
                              <a href="#" class=""><i class="fa fa-fw fa-linkedin"></i></a>
                          </li>
                          
                          <li>
                              <a href="#" class=""><i class="fa fa-fw fa-whatsapp"></i></a>
                          </li>
                      </ul>
                  </div>
                  
                  <div class="col-lg-6" style="margin-top:2em;">
                  	Copyright<i class="fa fa-fw fa-copyright"></i>&nbsp;&nbsp;www.trocaairsoft.com.br
                  </div>
                  
              </div>
	          <!-- ************************************************************************************************** -->
			  <!-- FIM SOBRE NÓS-->
	 		  <!-- ************************************************************************************************** -->             
              
	</body>
</html>