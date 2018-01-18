class Corretora::SimulacoesController < ApplicationController
  layout 'corretora/application'

  def novo
      @simulacao = Simulacao.new
  end

  def criar
      @simulacao = Simulacao.new(simulacao_params)
      if @simulacao.save
          
      else
          render :novo
      end
  end

  def seguro_auto
  end

  def seguro_residencia
  end

  def seguro_locacao
  end

  def enviar_auto
    EmailMailer.enviar_email_auto(params[:veiculo],params[:ano],params[:placa],params[:renavam],params[:nome],params[:email],params[:telefone],
    params[:cpf],params[:nascimento],params[:primeira],params[:civil],params[:profissao],params[:endereco],params[:garagem_residencia],params[:garagem_trabalho],params[:estender]).deliver_now        
    redirect_to corretora_home_path
  end

  def enviar_residencia
    EmailMailer.enviar_email_residencia(params[:nome], params[:email],params[:telefone], params[:cpf],params[:nascimento],params[:civil],params[:endereco], params[:tipo],params[:incendio], params[:vendaval],params[:eletricos], params[:terceiros],params[:outros]).deliver_now        
    redirect_to corretora_home_path
  end

  def enviar_locacao
    EmailMailer.enviar_email_locacao(
        params[:nome], 
        params[:email],
        params[:telefone],
        params[:imovel],
        params[:aluguel],
        params[:iptu],
        params[:agua],
        params[:condominio],
        params[:luz],
        params[:gas],

        params[:inquilino],
        params[:nascimento],
        params[:sexo],
        params[:imovel_inquilino],
        params[:endereco],
        params[:cpf],
        params[:rg],
        params[:civil],

        params[:email_inquilino],
        params[:telefone_inquilino],
        params[:empresa],
        params[:endereco_empresa],
        params[:telefone_empresa],
        params[:admissao],
        params[:renda_inquilino],
        params[:banco],
        params[:gerente],
        params[:telefone_banco],
        params[:endereco_banco],
        params[:conta],
        params[:desde],
        params[:referencia1],
        params[:referencia2],
        params[:conjuge],
        params[:nascimento_conjuge],
        params[:cpf_conjuge],
        params[:rg_conjuge],
        params[:email_conjuge],
        params[:telefone_conjuge],
        params[:empresa_conjuge],
        params[:endereco_empresa_conjuge],
        params[:telefone_empresa_conjuge],
        params[:admissao_conjuge],
        params[:renda_conjuge]).deliver_now        
    
        redirect_to corretora_home_path
  end

  private

      def simulacao_params
          params.require(:simulacao).permit(:tipo, :nome, :email, :telefone)
      end
end
