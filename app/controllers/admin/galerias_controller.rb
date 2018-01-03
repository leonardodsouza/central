class Admin::GaleriasController < ApplicationController
    before_action :autenticado
    layout 'admin/application'
    before_action :set_galeria, only: [:excluir]

    def criar
        @galeria = Galeria.new(galeria_params)
        @galeria.save
        @galerias = Galeria.where('veiculo_id =?', @galeria.veiculo_id).order(created_at: :desc)      
    end


    def excluir
        @galeria.destroy
        @galerias = Galeria.where('veiculo_id =?', @galeria.veiculo_id).order(created_at: :desc)
    end

    private
    
        def set_galeria
            @galeria = Galeria.find(params[:id])
        end

        def galeria_params
            params.require(:galeria).permit(:veiculo_id, :foto)
        end
end
