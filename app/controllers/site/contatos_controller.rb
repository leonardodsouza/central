class Site::ContatosController < ApplicationController
    layout 'site/application'  

    def contato 
        @random = Veiculo.order("RANDOM()").limit(3)
    end

    def enviar_contato
        #EmailMailer.contato(params[:nome],params[:email],params[:telefone],params[:mensagem]).deliver_now        
        redirect_to site_contato_url, notice: 'Mensagem enviada com sucesso.'
    end
    
end
