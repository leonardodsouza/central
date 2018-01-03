class Site::HomeController < ApplicationController
  layout 'site/application'  
  def home
    @veiculos = Veiculo.order("RANDOM()").limit(20)
    @posicao_01 = Cliente.where('posicao = ?', "1").last
    @posicao_02 = Cliente.where('posicao = ?', "2").last
    @banner_01 = Banner.first
    @banner_02 = Banner.second
    @banner_03 = Banner.third
  end
end
