class Site::VeiculosController < ApplicationController
  layout 'site/application'  
  before_action :set_veiculo, only: [:exibir]
  
  def veiculos
    @veiculos = Veiculo.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
  end
  
  def exibir
    @random = Veiculo.order("RANDOM()").limit(8)
    @sugestao = Veiculo.where('marca = ?', @veiculo.marca).limit(4)
    @grafico = Grafico.new
    @grafico.veiculo_id = @veiculo.id
    @grafico.save
  end

  def enviar_proposta
    EmailMailer.proposta(params[:link], params[:modelo], params[:nome],params[:email],params[:telefone],params[:mensagem]).deliver_now        
    redirect_to site_veiculo_path(params[:id]), notice: 'Mensagem enviada com sucesso.'
  end

  private
  
    def set_veiculo
        @veiculo = Veiculo.find(params[:id])
    end
end
