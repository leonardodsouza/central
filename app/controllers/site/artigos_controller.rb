class Site::ArtigosController < ApplicationController
  layout 'site/application' 
  before_action :set_artigo, only: [:exibir]
  
  def artigos
    @artigos = Artigo.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
    @random = Veiculo.order("RANDOM()").limit(4)
  end
  
  def exibir
    @random = Veiculo.order("RANDOM()").limit(4)
  end

  private
  
    def set_artigo
        @artigo = Artigo.find(params[:id])
    end
end
