class Admin::SessionsController < ApplicationController
	layout 'admin/login'
	def login
	end
	
	def entrar
		usuario = Usuario.find_by_email(params[:email])
		if usuario && usuario.password == params[:password]
		    session[:usuario_id] = usuario.id
            redirect_to admin_dashboard_path
		else
			flash.now.notice = 'Erro senha ou email incorreto'
			render "login"
		end
	end

	def sair
		reset_session
		redirect_to root_path
	end

	def recuperar_senha
	end

	def recuperar
		@usuario = Usuario.find_by_email(params[:email])
		if @usuario.present?
			EmailMailer.recuperar_senha(@usuario).deliver_now
			redirect_to admin_login_path, :notice => 'Senha enviada com sucesso'
		else
			redirect_to admin_login_path, :notice => 'Email nao encontrado'
		end
	end
end
