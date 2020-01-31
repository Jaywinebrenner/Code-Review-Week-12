Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :items
  resources :shelters do
    resources :animals
  end
end
