class Admin::DashboardController < ApplicationController
    before_action :autenticado
    layout 'admin/application'
    def dashboard
        @visitas = Grafico.where('created_at > ?', Date.today - 10)
    end
end
