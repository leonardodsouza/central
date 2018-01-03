class Admin::UsuariosController < ApplicationController
    before_action :autenticado
    layout 'admin/application'
    before_action :set_usuario, only: [:exibir, :editar, :atualizar, :excluir]
  
  
    def usuarios
      @usuarios = Usuario.all
    end
  
    def exibir
    end
  
    def novo
        @usuario = Usuario.new
    end
  
    def editar
    end
  
    def criar
        @usuario = Usuario.new(artigo_params)
        if @usuario.save
            redirect_to admin_usuarios_path(@usuario), notice: 'Usuario salvo com sucesso.'
        else
            render :novo
        end
    end
  
    def atualizar
        if @usuario.update(artigo_params)
            redirect_to admin_usuarios_path, notice: 'Usuario atualizado com sucesso.'
        else
            render :editar
        end
    end
  
    def excluir
        @usuario.destroy
        redirect_to admin_artigos_url, notice: 'Usuario excluido com sucesso.'
    end
  
    private
    
        def set_usuario
            @usuario = Usuario.find(params[:id])
        end
  
        def artigo_params
            params.require(:usuario).permit(:nome, :email, :password)
        end
  end
