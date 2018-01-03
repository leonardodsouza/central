class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_usuario
    @current_usuario ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end
  helper_method :current_usuario

  def usuario_logado
		current_usuario.is_a? Usuario
	end
	helper_method :usuario_logado

  def autenticado
		if usuario_logado
		else
			redirect_to admin_login_path
		end
  end
  
end
