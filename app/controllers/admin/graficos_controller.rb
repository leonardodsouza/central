class Admin::GraficosController < ApplicationController
    before_action :autenticado
    def graficos
        Grafico.destroy_all      
        redirect_to admin_dashboard_path
    end
end
