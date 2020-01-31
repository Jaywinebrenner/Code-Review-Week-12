Rails.application.routes.draw do
  resources :shelters do
    resources :animals
  end
end
