class Admin::ArtigosController < ApplicationController
  before_action :autenticado
  layout 'admin/application'
  before_action :set_artigo, only: [:exibir, :editar, :atualizar, :excluir]


  def artigos
    @artigos = Artigo.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
  end

  def exibir
  end

  def novo
      @artigo = Artigo.new
  end

  def editar
  end

  def criar
      @artigo = Artigo.new(artigo_params)
      if @artigo.save
          redirect_to admin_artigos_path(@artigo), notice: 'Artigo salvo com sucesso.'
      else
          render :novo
      end
  end

  def atualizar
      if @artigo.update(artigo_params)
          redirect_to admin_artigos_path, notice: 'Artigo atualizado com sucesso.'
      else
          render :editar
      end
  end

  def excluir
      @artigo.destroy
      redirect_to admin_artigos_url, notice: 'Artigo excluido com sucesso.'
  end

  private
  
      def set_artigo
          @artigo = Artigo.find(params[:id])
      end

      def artigo_params
          params.require(:artigo).permit(:titulo, :foto, :resumo, :texto)
      end
end
