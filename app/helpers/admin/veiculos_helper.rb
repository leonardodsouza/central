module Admin::VeiculosHelper
    def carros 
        Veiculo.where('categoria = ?', 'Carro').count
    end
    def motos 
        Veiculo.where('categoria = ?', 'Motocicleta').count
    end
    def outros 
        Veiculo.where('categoria = ?', 'Caminhão').count
    end
    def visualizacoes(veiculo)
        Grafico.where('veiculo_id = ?', veiculo).count
    end
    def total_visualizacoes
        Grafico.all.count
    end
    def veiculo(c)
        @veiculo = Veiculo.find(c)
        c = @veiculo.modelo
    end
end
