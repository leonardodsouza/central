class Corretora::HomeController < ApplicationController
    layout 'corretora/application'
    def home 
    end

    def enviar_contato
        EmailMailer.corretora(params[:nome],params[:email],params[:telefone],params[:mensagem]).deliver_now        
        redirect_to corretora_home_path, notice: 'Mensagem enviada com sucesso.'
    end
end
