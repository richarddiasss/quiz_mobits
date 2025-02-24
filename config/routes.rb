Rails.application.routes.draw do
  resources :characters
  resources :series

  namespace :admin do
    resources :series do
      collection do
        get :importar_series  # Definindo a rota GET para a ação de importação
      end
    end
  end

  namespace :admin do
    resources :series do
      resources :characters  # Isso cria rotas para personagens que precisam do series_id
    end

  
  end
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
