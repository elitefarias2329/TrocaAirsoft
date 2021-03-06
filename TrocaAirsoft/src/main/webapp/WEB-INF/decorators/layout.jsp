<%@ page language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!DOCTYPE html>
<html lang="pt-br">
	
	<head>
		<title><decorator:title default="Troca Airsoft"/></title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	 	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="">

		<!-- Favicon -->
	    <link rel="shortcut icon" href="includes/img/favicon.ico"/>

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
	    <script src="includes/js/jquery.maskedinput.js"></script>
       	
       	<!-- Arquivos JS Propriet�rios -->
       	<script src="includes/js/funcionalidades/layout.js"></script>
       	<script src="includes/js/util/mensagens.js"></script>
       	
		
		<decorator:head />
		
	</head>

	<body>
	
		<!-- ************************************************************************************************** -->
        <!-- BARRA DE NAVEGA��O -->
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
        			<li><a href="inicio"><i class="fa fa-crosshairs"></i> Home</a></li>
        			
        			<li class="dropdown">
          				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
          					<i class="fa fa-crosshairs"></i> 
          					O Esporte
          					<span class="caret"></span>
          				</a>
          				
          				<ul class="dropdown-menu">
            				<li><a href="loadDefinicaoAirsoft"><i class="fa fa-long-arrow-right"></i> O que � Airsoft?</a></li>
            				<li><a href="loadlegislacaoAirsoft"><i class="fa fa-long-arrow-right"></i> Legisla��o</a></li>
            				<li><a href="loadDicionarioAirsoft"><i class="fa fa-long-arrow-right"></i> Dicion�rio</a></li>
            				<li><a href="loadDicasAirsoft"><i class="fa fa-long-arrow-right"></i> Dicas</a></li>
				            
          				</ul>
        			</li>
        			
        			<li><a href="loadParceiros"><i class="fa fa-crosshairs"></i> Parceiros</a></li>
        			<li><a href="loadArmeiros"><i class="fa fa-crosshairs"></i> Armeiros</a></li>
        			<li><a href="loadPinturaCamuflagem"><i class="fa fa-crosshairs"></i> Pintura e Camuflagem</a></li>
        			<li><a href="loadAluguelEquipamento"><i class="fa fa-crosshairs"></i> Aluguel de Equipamento</a></li>
					<li><a href="loadTimes"><i class="fa fa-crosshairs"></i> Times</a></li>
        			<li><a href="loadEventos"><i class="fa fa-crosshairs"></i> Eventos</a></li>
        			<li><a href="loadVideos"><i class="fa fa-crosshairs"></i> V�deos</a></li>
        			
        			<li><a href="#div_modal_fale_conosco" data-toggle="modal"><i class="fa fa-crosshairs"></i> Fale Conosco</a></li>
        			
        		</ul>	
				</div>
          </div>
        </nav>
		
		<!-- ************************************************************************************************** -->
        <!--  FIM BARRA DE NAVEGA��O -->
        <!-- ************************************************************************************************** -->
        
        
        <!-- ************************************************************************************************** -->
		<!-- DIV MODAL FALE CONOSCO -->
		<!-- ************************************************************************************************** -->
		<div class="modal fade" id="div_modal_fale_conosco" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content div_modal_content">
			      
					<div class="modal-header">
		        		<h4 class="modal-title div_modal_title"><i class="fa fa-comments"></i> Fale Conosco</h4>
		      		</div>
		      
		      		<div class="modal-body">
				        		
		        		<form id="form_fale_conosco">
							
							<div class="form-group">
									<label for="nome">*Nome</label>
									<input type="text" class="form-control" id="nome" placeholder="Nome" maxlength="60">
							</div>
							
							<div class="form-group">
									<label for="email">*Email</label>
									<input type="email" class="form-control email" id="email" placeholder="Email" maxlength="60">
							</div>
							
							<div class="form-group">
									<label for="telefone_fixo">*Telefone Fixo</label>
									<input type="text" class="form-control telefone telefone_fixo" id="telefone_fixo" placeholder="Telefone Fixo">
							</div>
							
							<div class="form-group">
									<label for="telefone_celular">*Telefone Celular</label>
									<input type="text" class="form-control telefone telefone_celular" id="telefone_celular" placeholder="Telefone Celular">
							</div>
							
							<div class="form-group">
									<label for="assunto">*Assunto</label>
									<br/>
									<select id="assunto" class="assunto">
										<option value="0">...Selecione...</option>
										<option value="1">Quero ser um Parceiro</option>
										<option value="2">D�vidas</option>
										<option value="3">Sugest�o</option>
										<option value="4">Cr�tica</option>
										<option value="5">Orienta��es T�cnicas</option>
									</select>
							</div>
							
							<div class="form-group">
									<label for="mensagem">*Mensagem</label>
									<br/>
									<textarea id="mensagem" class="mensagem" placeholder="Digite aqui sua mensagem" rows="5"></textarea>
							</div>
							
							<div>
								<p><i>Os campos obrigat�rios s�o marcados com *</i></p>
							</div>
	
						</form>
								
	      			</div>
			      
					<div class="modal-footer">
						<button class="bt_acao" data-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Fechar</button>
		  				<button class="bt_acao"><i class="fa fa-send"></i>&nbsp;Enviar</button>
		      		</div>
				      
	    		</div>
	  		</div>
		</div>
		<!-- ************************************************************************************************** -->
		<!-- FIM DIV MODAL FALE CONOSCO -->
		<!-- ************************************************************************************************** -->
	  

		<!-- ************************************************************************************************** -->
	   	<!-- HEADER FUNDO IMAGEM -->
		<!-- ************************************************************************************************** -->    
		<div class="container-fluid main_header">
			<div class="row">
	       		
				<!-- ************************************************************************************************** -->
	   			<!-- DIV LOGO -->
	    		<!-- ************************************************************************************************** -->
	       		<div id="div_logo" class="col-lg-2">
				    <img id="logo"  alt="Troca Airsoft" title="Troca Airsoft" src="includes/img/logo_380x301.png"  style="display:none;">
				    <p class="logo_frase">"Airsoft com Economia!"</p>
				</div>
				<!-- ************************************************************************************************** -->
   				<!-- FIM DIV LOGO -->
    			<!-- ************************************************************************************************** -->
    			
    			
    			
    			<!-- ************************************************************************************************** -->
	    		<!-- DIV COLUNA LOGIN/CONTA + PESQUISAR + ANUNCIAR
	     		<!-- ************************************************************************************************** -->
				<div class="col-lg-10 container_login_criar_conta">
									
					
					<!-- ************************************************************************************************** -->
	    			<!-- DIV LINHA LOGIN/CRIAR CONTA -->
	     			<!-- ************************************************************************************************** -->
					<div class="row">
						<div class="col-lg-12 container_login_criar_conta">
							
							
							<s:if test="%{#session.usuarioLogado == null}">
								<a href="#div_modal_login" data-toggle="modal" class="login_criar_conta" ><i class="fa fa-sign-in"></i> Login</a>
								<a href="loadCriarConta" class="login_criar_conta"><i class="fa fa-user-plus"></i> Criar Conta</a>
							</s:if>
							<s:else>
								<span class="nome_usuario_logado">Bem vindo ${sessionScope.usuarioLogado.nome} !</span>
								<a href="loadCriarConta" class="login_criar_conta"><i class="fa fa-user"></i> Minha Conta</a>
								<a href="logout" class="login_criar_conta"><i class="fa fa-sign-out"></i>Sair</a>
							</s:else>
							
							
							<!-- ************************************************************************************************** -->
			    			<!-- DIV MODAL LOGIN -->
			     			<!-- ************************************************************************************************** -->
							<div class="modal fade" id="div_modal_login" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content div_modal_content">
								      
										<div class="modal-header">
							        		<h4 class="modal-title div_modal_title"><i class="fa fa-user"></i> Login</h4>
							      		</div>
							      
							      		<div class="modal-body">
									        		
									        <div id="login_container_mensagem_erro" >
									        	<p id="login_paragrafo_mensagem_erro" class="mensagem_erro"></p>
									        </div>		
									        		
									        <div class="loading_gif text-center" style="display:none;">
												<img src="includes/img/reload.gif">									        	
									        </div>		
									        		
							        		<form id="form_login">
												<div class="form-group">
														<label for="email">Email</label>
														<input type="email" name="vo.email" class="form-control" id="email" placeholder="Email" maxlength="60"/>
												</div>
						
												<div class="form-group">
														<label for="senha">Senha</label>
			 											<input type="password" name="vo.senha" class="form-control" id="senha" placeholder="Senha" maxlength="30"/>
												</div>
											</form>
													
											<div class="div_esqueci_senha">
												<p>
		                                			<font>Esqueceu sua senha?</font>
		                                			<br/>
		                                			Digite seu e-mail e 
		                                    		<button class="bt_acao"><i class="fa fa-hand-o-right"></i>&nbsp;Clique Aqui</button>
		                                    		para lhe enviarmos uma nova senha.
		                               			<p/>
		                           			</div>
									        		
						      			</div>
								      
										<div class="modal-footer">
											<button class="bt_acao" data-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Fechar</button>
							  				<button class="bt_acao" id="bt_entrar"><i class="fa fa-sign-in"></i>&nbsp;Entrar</button>
							      		</div>
									      
						    		</div>
						  		</div>
							</div>
							<!-- ************************************************************************************************** -->
		    				<!-- FIM DIV MODAL LOGIN -->
		     				<!-- ************************************************************************************************** -->
						</div>
					</div>
					<!-- ************************************************************************************************** -->
	    			<!-- FIM DIV LINHA LOGIN/CRIAR CONTA -->
	     			<!-- ************************************************************************************************** -->
				
				
					<!-- ************************************************************************************************** -->
	    			<!-- DIV LINHA ANUNCIAR -->
	     			<!-- ************************************************************************************************** -->
					<div class="row div_anunciar_container">
						
						<div class="col-lg-7"></div>
						
						<div class="col-lg-5">
						
							<div class="div_anunciar">
								 
								<font>
									<i class="fa fa-exchange"></i>
									&nbsp;Tenho Equipamento para 
								</font>
									
								<button class="bt_acao"><i class="fa fa-bullhorn"></i>&nbsp;Anunciar</button>
							</div>
						
						</div>
					</div>	
					<!-- ************************************************************************************************** -->
	    			<!-- FIM DIV LINHA ANUNCIAR -->
	     			<!-- ************************************************************************************************** -->
				
					<!-- ************************************************************************************************** -->
	    			<!-- DIV LINHA PESQUISAR -->
	     			<!-- ************************************************************************************************** -->
	     			<div class="row div_buscar_container">
						<div class="col-lg-12">
							<input type="text" class="div_buscar_text" id="text_buscar" placeholder="Digite Aqui o que Procura. Ex: M4A1">
							<button class="bt_acao" data-dismiss="modal"><i class="fa fa-search"></i>&nbsp;Pesquisar</button>
						</div>
					</div>
	     			<!-- ************************************************************************************************** -->
	    			<!-- FIM DIV LINHA PESQUISAR -->
	     			<!-- ************************************************************************************************** -->
	     			
					<!-- ************************************************************************************************** -->
	    			<!-- DIV LINHA PESQUISA DETALHADA -->
	     			<!-- ************************************************************************************************** -->
	     			<div class="row">
						<div class="col-lg-6"></div>
					
						<div class="col-lg-6 text-left">
							<a href="#div_modal_pesquisa_detalhada" data-toggle="modal" class="link_pesquisa_detalhada"><i class="fa fa-binoculars"></i>&nbsp;Pesquisa Detalhada</a>
						</div>
						
						<!-- ************************************************************************************************** -->
	    				<!-- DIV MODAL PESQUISA DETALHADA -->
	     				<!-- ************************************************************************************************** -->
						<div class="modal fade" id="div_modal_pesquisa_detalhada" tabindex="-1">
						    <div class="modal-dialog">
						    	<div class="modal-content div_modal_content">
						      
									<div class="modal-header">
						        		<h4 class="modal-title div_modal_title"><i class="fa fa-search"></i>&nbsp;Pesquisa Detalhada</h4>
						      		</div>
						      
						      		<div class="modal-body">
						        		
						        		<form id="form_pesquisa_detalhada">
	 											
											<table class="table_grupo_filtro">
												<tr>
													<td>
														<font>Local:</font>
													</td>
													<td>
														<select multiple id="combo_local" class="combo_multi">
															<option value="1">Rio de Janeiro</option>
								                            <option value="2">S�o Paulo</option>
								                            <option value="3">Minas Gerais</option>
								                        </select>
													</td>
												</tr>
										
												<tr>
													<td>
														<font>Marcador:</font>
													</td>
													<td>
														<select multiple id="combo_marcador" class="combo_multi">
															<optgroup label="Sistema de Disparo">
																<option value="1">El�trica (AEG/AEP)</option>
								                            	<option value="2">G�s (GBB)</option>
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
															
								                           <optgroup label="Caracter�sticas">
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
														<select multiple id="combo_loadout" class="combo_multi">
															<option value="1">�culos de Prote��o</option>
															<option value="2">M�scara</option>
															<option value="3">Luva</option>
															<option value="4">Farda Completa</option>
															<option value="5">Cal�a</option>
															<option value="6">Gandola</option>
															<option value="7">Camisa T�tica</option>
															<option value="7">Cuturno/Bota</option>
								                        </select>  
													</td>
												</tr>
										
												<tr>
													<td>
														<font>Acess�rios:</font>
													</td>
													<td>
														<select multiple id="combo_acessorios" class="combo_multi">
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
														<select multiple id="combo_upgrade" class="combo_multi">
															<option value="1">Mola</option>
															<option value="2">Cilindro</option>
															<option value="4">Cabe�a de Cilindro</option>
															<option value="3">Pist�o</option>
															<option value="4">Cabe�a de Pist�o</option>
															<option value="5">Cano de Precis�o</option>
															<option value="6">Hop-up</option>
															<option value="7">Air Nozzle</option>
															<option value="7">Bucking</option>
															<option value="7">Fia��o</option>
															<option value="7">Motor</option>
								                        </select>  
													</td>
												</tr>
												
												<tr>
													<td>
														<font>Outros:</font>
													</td>
													<td>
														<select multiple id="combo_outros" class="combo_multi">
															<option value="1">BB's 0.20g</option>
															<option value="1">BB's 0.25g</option>
															<option value="4">Alvo</option>
															<option value="3">Patch</option>
								                        </select>  
													</td>
												</tr>
										
											</table>
	 											
										</form>
										
						      		</div>
						      
									<div class="modal-footer">
										<button class="bt_acao" data-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Fechar</button>
										<button class="bt_acao"><i class="fa fa-search"></i>&nbsp;Pesquisar</button>
						      		</div>
						      
					    		</div>
					  		</div>
						</div>
						<!-- ************************************************************************************************** -->
	    				<!-- FIM DIV MODAL PESQUISA DETALHADA -->
	     				<!-- ************************************************************************************************** -->
						
					</div>
	     			<!-- ************************************************************************************************** -->
	    			<!-- FIM DIV LINHA PESQUISA DETALHADA -->
	     			<!-- ************************************************************************************************** -->
	     			
					
					
				
				
				</div>
				<!-- ************************************************************************************************** -->
	    		<!-- DIV COLUNA LOGIN/CONTA + PESQUISAR + ANUNCIAR
	     		<!-- ************************************************************************************************** -->


				
			</div>
		</div>
		<!-- ************************************************************************************************** -->
	   	<!-- FIM HEADER FUNDO IMAGEM -->
		<!-- ************************************************************************************************** -->    


	    <div class="container-fluid">
        	<div class="row">
        
        		<!-- ************************************************************************************************** -->
  				<!-- DIV'S DESTAQUE PREMIUM -->
				<!-- ************************************************************************************************** -->	
        		<div class="col-lg-2 div_equip div_destaque_premium">
        			<p><i class="fa fa-star"></i>&nbsp;Destaque</p>
        			
        			<table>
        				
        				<tr>
        					<td>
        						<hr>
       							<font>Cinto t�tico tipo Mole</font>
       							<br/>
       							<font class="div_destaque_premium_valor">R$: 120,00</font>
       							<br/>
       							<a href="#">
       								<img id="" alt="cinto t�tico" title="cinto t�tico" src="includes/thumbnail/cinto_tatico_160x160.png">
       							</a>
       							<br/>
       							<font>www.falconarmas.com.br</font>
        					</td>
        				</tr>
        				
        				<tr>
        					<td>
        						<hr>
       							<font>Cyma Beretta M92F - AEP</font>
       							<br/>
       							<font style="color: red;">R$: 990,00</font>
       							<br/>
       							<a href="#">
       								<img id="" alt="beretta m92f" title="beretta m92f" src="includes/thumbnail/Aep-160x160.png">
       							</a>
       							<br/>
       							<font>www.qgairsoft.com</font>
        					</td>
        				</tr>
        				
        				<tr>
        					<td>
        						<hr>
       							<font>Boot T�tico Desert</font>
       							<br/>
       							<font style="color: red;">R$: 230,00</font>
       							<br/>
       							<a href="#">
       								<img id="" alt="boot t�tico" title="boot t�tico" src="includes/thumbnail/boot_160x160.png">
       							</a>
       							<br/>
       							<font>www.ventureshop.com.br</font>
        					</td>
        				</tr>
        				
        			</table>
        		</div>	
				<!-- ************************************************************************************************** -->
  				<!-- FIM DIV'S DESTAQUE PREMIUM -->
				<!-- ************************************************************************************************** -->        		
        		
        		
        		<!-- ************************************************************************************************** -->
  				<!-- BODY DAS P�GINAS DECORADAS
				<!-- ************************************************************************************************** -->
        		<div class="col-lg-9 div_equip container_div_conteudo_principal">
	    			<decorator:body />
        		</div>
				<!-- ************************************************************************************************** -->
  				<!-- BODY DAS P�GINAS DECORADAS
				<!-- ************************************************************************************************** -->        			

        	</div>
       	</div>
     	
     	
	    
	    
	    
	    
	    
	    <!-- ************************************************************************************************** -->
		<!-- FOOTER SOBRE N�S-->
	 	<!-- ************************************************************************************************** -->
		<div id="div_sobre_nos" class="row bg-primary sobre_nos">
      
	        <div class="col-lg-12 sobre_nos_title">
                      <h1>Sobre N�s</h1>
                  </div>
      
                  <div class="col-lg-6">
                      <h3>Nossa Hist�ria</h3>
                      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut 	
                          wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure
                          dolor in hendrerit in vulputate velit esse molestie consequat.</p>
                  </div>                
      
                  <div class="col-lg-6">
                      <h3>Nossa Miss�o</h3>
                      <p>
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
                  
                  <div class="col-lg-6 div_copyright">
                  	Copyright<i class="fa fa-fw fa-copyright"></i>&nbsp;&nbsp;www.trocaairsoft.com.br
                  </div>
                  
              </div>
	          <!-- ************************************************************************************************** -->
			  <!-- FIM FOOTER SOBRE N�S-->
	 		  <!-- ************************************************************************************************** -->
			
	</body>
</html>
