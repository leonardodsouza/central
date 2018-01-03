module Admin::SimulacoesHelper
    def simulacoes 
        Simulacao.count
    end
end
