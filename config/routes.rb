Rails.application.routes.draw do
  
  namespace :corretora do
    get 'simulacoes/novo'
    post 'home'            => 'home#enviar_contato',   :as => 'enviar_contato'
  end

  root to: "site/home#home" 
  
  namespace :corretora do
    root to: "home#home" 

    get  '/home'                => 'home#home',               :as => 'home'

    get    '/simulacoes/auto'   => 'simulacoes#seguro_auto',  :as => 'seguro_auto'
    post   '/enviar_auto'        => 'simulacoes#enviar_auto'

    get    '/simulacoes/locacao'   => 'simulacoes#seguro_locacao',  :as => 'seguro_locacao'
    post   '/enviar_locacao'        => 'simulacoes#enviar_locacao'

    get    '/simulacoes/residencia'   => 'simulacoes#seguro_residencia',  :as => 'seguro_residencia'
    post   '/enviar_residencia'        => 'simulacoes#enviar_residencia'

    get    '/simulacoes/novo'   => 'simulacoes#novo',         :as => 'novo_simulacao'
    post   '/simulacoes'        => 'simulacoes#criar'
  end

  namespace :site do
    get  '/home'                => 'home#home',         :as => 'home'
    get  '/home/quem_somos'                => 'home#quem_somos',         :as => 'quem_somos'
    get  '/veiculos'            => 'veiculos#veiculos', :as => 'veiculos'
    get  '/veiculos/:id'        => 'veiculos#exibir',   :as => 'veiculo'
    post '/veiculos'            => 'veiculos#enviar_proposta'

    get  '/artigos'             => 'artigos#artigos',   :as => 'artigos'
    get  '/artigos/:id'         => 'artigos#exibir',    :as => 'artigo'

    get  '/contatos'            => 'contatos#contato',  :as => 'contato'
    post '/contatos'            => 'contatos#enviar_contato',   :as => 'enviar_contato'

  end

  
  namespace :admin do
    
    mount Ckeditor::Engine => '/ckeditor'

    get    '/login'                    => 'sessions#login',        :as => 'login'
    post   '/entrar'                   => 'sessions#entrar',       :as => 'entrar'
    get    '/sair'                     => 'sessions#sair',         :as => 'sair'
    post   '/recuperar'                => 'sessions#recuperar',    :as => 'recuperar'

    get    '/dashboard'                => 'dashboard#dashboard',     :as => 'dashboard'
    get    '/graficos'                 => 'graficos#graficos',       :as => 'graficos'
    
    get    '/veiculos/imprimir'        => 'veiculos#imprimir',       :as => 'imprimir_veiculos'
    get    '/veiculos'                 => 'veiculos#veiculos',       :as => 'veiculos'
    get    '/veiculos/novo'            => 'veiculos#novo',           :as => 'novo_veiculo'
    get    '/veiculos/:id'             => 'veiculos#exibir',         :as => 'veiculo'
    get    '/veiculos/:id/editar'      => 'veiculos#editar',         :as => 'editar_veiculo'
    patch  '/veiculos/:id'             => 'veiculos#atualizar'
    post   '/veiculos'                 => 'veiculos#criar'
    delete '/veiculos/:id'             => 'veiculos#excluir'
  
    get    '/simulacoes'               => 'simulacoes#simulacoes',    :as => 'simulacoes'
    get    '/simulacoes/novo'          => 'simulacoes#novo',          :as => 'novo_simulacao'
    get    '/simulacoes/:id'           => 'simulacoes#exibir',        :as => 'simulacao'
    get    '/simulacoes/:id/editar'    => 'simulacoes#editar',        :as => 'editar_simulacao'
    patch  '/simulacoes/:id'           => 'simulacoes#atualizar'
    post   '/veicusimulacoeslos'       => 'simulacoes#criar'
    delete '/simulacoes/:id'           => 'simulacoes#excluir'  
    
    
    get    '/clientes'                 => 'clientes#clientes',       :as => 'clientes'
    get    '/clientes/novo'            => 'clientes#novo',           :as => 'novo_cliente'
    get    '/clientes/:id'             => 'clientes#exibir',         :as => 'cliente'
    get    '/clientes/:id/editar'      => 'clientes#editar',         :as => 'editar_cliente'
    patch  '/clientes/:id'             => 'clientes#atualizar'
    post   '/clientes'                 => 'clientes#criar'
    delete '/clientes/:id'             => 'clientes#excluir'

    get    '/banners'                 => 'banners#banners',        :as => 'banners'
    get    '/banners/novo'            => 'banners#novo',           :as => 'novo_banner'
    get    '/banners/:id'             => 'banners#exibir',         :as => 'banner'
    get    '/banners/:id/editar'      => 'banners#editar',         :as => 'editar_banner'
    patch  '/banners/:id'             => 'banners#atualizar'
    post   '/banners'                 => 'banners#criar'
    delete '/banners/:id'             => 'banners#excluir'

    get    '/artigos'                 => 'artigos#artigos',        :as => 'artigos'
    get    '/artigos/novo'            => 'artigos#novo',           :as => 'novo_artigo'
    get    '/artigos/:id'             => 'artigos#exibir',         :as => 'artigo'
    get    '/artigos/:id/editar'      => 'artigos#editar',         :as => 'editar_artigo'
    patch  '/artigos/:id'             => 'artigos#atualizar'
    post   '/artigos'                 => 'artigos#criar'
    delete '/artigos/:id'             => 'artigos#excluir'

    get    '/usuarios'                 => 'usuarios#usuarios',        :as => 'usuarios'
    get    '/usuarios/novo'            => 'usuarios#novo',           :as => 'novo_usuario'
    get    '/usuarios/:id'             => 'usuarios#exibir',         :as => 'usuario'
    get    '/usuarios/:id/editar'      => 'usuarios#editar',         :as => 'editar_usuario'
    patch  '/usuarios/:id'             => 'usuarios#atualizar'
    post   '/usuarios'                 => 'usuarios#criar'
    delete '/usuarios/:id'             => 'usuarios#excluir'

    get    '/galerias'                 => 'galerias#veiculos',       :as => 'galerias'
    get    '/galerias/novo'            => 'galerias#novo',           :as => 'novo_galeria'
    get    '/galerias/:id'             => 'galerias#exibir',         :as => 'galeria'
    get    '/galerias/:id/editar'      => 'galerias#editar',         :as => 'editar_galeria'
    patch  '/galerias/:id'             => 'galerias#atualizar'
    post   '/galerias'                 => 'galerias#criar'
    delete '/galerias/:id'             => 'galerias#excluir'
  end
end
