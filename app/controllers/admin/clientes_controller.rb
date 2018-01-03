class Admin::ClientesController < ApplicationController
    before_action :autenticado
    layout 'admin/application'
    before_action :set_cliente, only: [:exibir, :editar, :atualizar, :excluir]


    def clientes
        @clientes = Cliente.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
    end

    def exibir
    end

    def novo
        @cliente = Cliente.new
    end

    def editar
    end

    def criar
        @cliente = Cliente.new(cliente_params)
        if @cliente.save
            redirect_to admin_clientes_url, notice: 'Cliente salvo com sucesso.'
        else
            render :novo
        end
    end

    def atualizar
        if @cliente.update(cliente_params)
            redirect_to admin_clientes_url, notice: 'Cliente atualizado com sucesso.'
        else
            render :editar
        end
    end

    def excluir
        @cliente.destroy
        redirect_to admin_clientes_url, notice: 'Cliente excluido com sucesso.'
    end

    private
    
        def set_cliente
            @cliente = Cliente.find(params[:id])
        end

        def cliente_params
            params.require(:cliente).permit(:nome, :texto, :foto, :posicao)
        end
end
