class Admin::BannersController < ApplicationController
    before_action :autenticado
    layout 'admin/application'
    before_action :set_artigo, only: [:exibir, :editar, :atualizar, :excluir]


    def banners
        @banners = Banner.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
    end

    def exibir
    end

    def novo
        @banner = Banner.new
    end

    def editar
    end

    def criar
        @banner = Banner.new(artigo_params)
        if @banner.save
            redirect_to admin_banners_url, notice: 'Banner salvo com sucesso.'
        else
            render :novo
        end
    end

    def atualizar
        if @banner.update(artigo_params)
            redirect_to admin_banners_url, notice: 'Banner atualizado com sucesso.'
        else
            render :editar
        end
    end

    def excluir
        @banner.destroy
        redirect_to admin_banners_url, notice: 'Banner excluido com sucesso.'
    end

    private

        def set_artigo
            @banner = Banner.find(params[:id])
        end

        def artigo_params
            params.require(:banner).permit(:titulo, :foto, :legenda)
        end
end
