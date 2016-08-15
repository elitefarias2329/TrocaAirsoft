<!DOCTYPE html>
<html lang="pt-br">

	<head>
		<script src="includes/js/funcionalidades/criar_conta.js"></script>
	</head>
	
	<body>

		
		<div class="row container-fluid" style="text-align: center!important;">
			<div class="col-lg-12">
				<p class="titulo_grande"><i class="fa fa-user-plus"></i>&nbsp;Criar Conta</p>
			</div>
		</div>		
		
		<br/>
		<br/> 
		
		<div class="row container-fluid">
		
			<div class="col-lg-5 div_equip div_destaque_premium">
				<p><i class="fa fa-user"></i>&nbsp;Perfil Simples</p>
				
				<ul class="fonte_itens_prefil">
					<li>Grátis</li>
					<li>Anuncie até 10 itens</li>
					<li>Até 5 fotos por anúncio</li>
					<li>Um telefone para contato</li>
				</ul>
					
			</div>
			
			<div class="col-lg-1">&nbsp;</div>
			
			<div class="col-lg-5 div_equip div_destaque_premium">
				<p><i class="fa fa-diamond"></i>&nbsp;Perfil Premium</p>
				
				<ul class="fonte_itens_prefil">
					<li>R$: 9,99 mensais</li>
					<li>Anuncie quantos itens quiser</li>
					
					<li>Ganhe 3 anúncios Destaque Premium 
						<a href="#" id="perfil_premium_info"
									data-toggle="tooltip" data-placement="top"
									title="O anúncio destaque premium aparece em todas as páginas no banner esquerdo e aumenta muito a vizualização pelos usuários."> 
						   	        
							<i class="fa fa-question-circle"></i>
						</a>
					</li>
					
					<li>Até 10 fotos em Alta Definição por anúncio</li>
					<li>Até 3 Telefones para contato com Destaque</li>
				</ul>
				
			</div>
			
		</div>
		
		
		<div class="row container-fluid">
			<div class="col-lg-11 div_equip div_destaque_premium">
			
				<form id="form_cadastro" class="fonte_itens_prefil">
							
					<div class="form-group">
						<label for="">* Tipo de Perfil</label>
						<br/>
						<label class="radio-inline">
  							<input type="radio" name="rb_tipo_prefil" id="rb_tipo_prefil_simples" value=""> 
  							<i class="fa fa-user"></i> Simples
						</label>
						
						<label class="radio-inline">
  							<input type="radio" name="rb_tipo_prefil" id="rb_tipo_prefil_premium" value=""> 
  							<i class="fa fa-diamond"></i> Premium
						</label>
						<hr/>
					</div>
					
					<div class="form-group">
						<label for="">* Tipo de Anunciante</label>
						<br/>
						<label class="radio-inline">
  							<input type="radio" name="rb_tipo_anunciante" id="rb_tipo_anunciante_particular" checked="checked" value="">Particular
						</label>
						
						<label class="radio-inline">
  							<input type="radio" name="rb_tipo_anunciante" id="rb_tipo_anunciante_profissional" value="">Profissional 
						</label>
						<hr/>
					</div>
 					
 					<div id="div_cad_sexo" class="form-group">
						<label for="">* Sexo</label>
						<br/>
						<label class="radio-inline">
  							<input type="radio" name="rb_sexo" id="rb_sexo_m" checked="checked" value="">Masculino
						</label>
						
						<label class="radio-inline">
  							<input type="radio" name="rb_sexo" id="rb_sexo_f" value="">Feminino 
						</label>
						<hr/>
					</div>
 					
 					<div id="div_cad_cpf" class="form-group">
						<label for="cad_cpf">* CPF</label>
						<input type="text" class="form-control cpf_cnpj" id="cad_cpf" placeholder="CPF">
 					</div>
 					
 					<div id="div_cad_cnpj" class="form-group">
						<label for="cad_cnpj">* CNPJ</label>
						<input type="text" class="form-control cpf_cnpj" id="cad_cnpj" placeholder="CNPJ">
 					</div>
 					
 					<div class="form-group">
						<label for="cad_nome">* Nome Completo</label>
						<input type="text" class="form-control" id="cad_nome" placeholder="Nome Completo" maxlength="60">
 					</div>
					
					<div class="form-group">
						<label for="cad_apelido">* Apelido</label>
						<input type="text" class="form-control" id="cad_apelido" placeholder="Apelido" maxlength="60">
					</div>
					
					<div class="form-group">
						<label for="cad_email">* Email</label>
						<input type="email" class="form-control email" id="cad_email" placeholder="Email" maxlength="60">
					</div>
					
					<div class="form-group">
						<label for="cad_telefone_fixo">Telefone Fixo</label>
						<input type="text" class="form-control telefone telefone_fixo" id="cad_telefone_fixo" placeholder="Telefone Fixo">
					</div>
					
					<div class="form-group">
						<label for="cad_telefone_celular">* Telefone Celular</label>
						<input type="text" class="form-control telefone telefone_celular" id="cad_telefone_celular"  placeholder="Telefone Celular">
					</div>
					
					<div class="form-group">
						<label for="cad_cep">* CEP</label>
						<input type="text" class="form-control cep" id="cad_cep"  placeholder="CEP"/>
						
						<a href="http://www.buscacep.correios.com.br/sistemas/buscacep/" target="_blank" id="nao_sei_cep">Não sei meu CEP
							<i class="fa fa-question-circle"></i>
						</a>
					</div>
					
					<div class="form-group">
						<label for="estado">*Estado</label>
						<br/>
						<select id="estado" class="estado">
							<option value="">...Selecione...</option>
							<option value="RJ">Rio de Janeiro</option>
							<option value="SP">São Paulo</option>
							<option value="MG">Minas Gerais</option>
							<option value="ES">Espírito Santo</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="cad_senha">Senha</label>
						<input type="password" class="form-control senha" id="cad_senha" placeholder="Senha">
					</div>
					
					<div class="form-group">
						<label for="cad_repetir_senha">Repetir Senha</label>
						<input type="password" class="form-control senha" id="cad_repetir_senha" placeholder="Repetir Senha">
					</div>
					
					<div class="form-group">
						<label class="checkbox-inline">
  							<input type="checkbox" id="cb_termos" >
  								Li e Aceito os <a href="#">Termos e Condições</a> desse site.
						</label>
						
						<hr/>
					</div>
					
					<div>
						<p><i>Os campos obrigatórios são marcados com *</i></p>
					</div>
	
				</form>	
			
			</div>
			
		</div>		 
              
	</body>
</html>