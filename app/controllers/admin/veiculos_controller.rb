class Admin::VeiculosController < ApplicationController
    before_action :autenticado
    layout 'admin/application'
    before_action :set_veiculo, only: [:exibir, :editar, :atualizar, :excluir]


    def veiculos
        @carros = Veiculo.where('categoria = ?','Carro').order(created_at: :desc)
        @motos = Veiculo.where('categoria = ?','Motocicleta').order(created_at: :desc)
        @caminhoes = Veiculo.where('categoria = ?','Caminhão').order(created_at: :desc)
    end

    def imprimir
        @veiculos = Veiculo.all.order(created_at: :desc)
        render pdf: "imprimir"
    end


    def exibir
    end

    def novo
        @veiculo = Veiculo.new
    end

    def editar
        @galeria = Galeria.new
        @galerias = Galeria.where('veiculo_id =?', @veiculo).order(created_at: :desc)
    end

    def criar
        @veiculo = Veiculo.new(veiculo_params)
        if @veiculo.save
            redirect_to admin_editar_veiculo_path(@veiculo), notice: 'Veículo salvo com sucesso agora adicione as fotos.'
        else
            render :novo
        end
    end

    def atualizar
        if @veiculo.update(veiculo_params)
            redirect_to admin_veiculos_path, notice: 'Veiculo atualizado com sucesso.'
        else
            render :editar
        end
    end

    def excluir
        @veiculo.destroy
        redirect_to admin_veiculos_url, notice: 'Veiculo excluido com sucesso.'
    end

    private
    
        def set_veiculo
            @veiculo = Veiculo.find(params[:id])
        end

        def veiculo_params
            params.require(:veiculo).permit(:categoria, :preco, :tipo, :foto, :marca, :modelo, :descricao, :visualizacoes)
        end
end
