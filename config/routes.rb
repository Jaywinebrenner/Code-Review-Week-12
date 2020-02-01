Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  # get 'random', to: "animals#random"
resources :randoms
  resources :items
  resources :shelters do
    resources :animals
  end
end
