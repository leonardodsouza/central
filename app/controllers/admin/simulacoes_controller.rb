class Admin::SimulacoesController < ApplicationController
    before_action :autenticado
    layout 'admin/application'
    before_action :set_simulacao, only: [:exibir, :excluir]


    def simulacoes
        @simulacoes = Simulacao.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
    end

    def exibir
    end


    def excluir
        @simulacao.destroy
        redirect_to admin_simulacoes_url, notice: 'Simulacao excluido com sucesso.'
    end

    private

        def set_simulacao
            @simulacao = Simulacao.find(params[:id])
        end
end
