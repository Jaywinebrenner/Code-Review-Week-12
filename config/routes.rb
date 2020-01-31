Rails.application.routes.draw do
  resources :items
  resources :shelters do
    resources :animals
    post 'authenticate', to: 'authentication#authenticate'
  end
end
