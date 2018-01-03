class Corretora::SimulacoesController < ApplicationController
  layout 'corretora/application'

  def novo
      @simulacao = Simulacao.new
  end

  def criar
      @simulacao = Simulacao.new(simulacao_params)
      if @simulacao.save
          
      else
          render :novo
      end
  end

  private

      def simulacao_params
          params.require(:simulacao).permit(:tipo, :nome, :email, :telefone)
      end
end
