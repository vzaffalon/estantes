Rails.application.routes.draw do
  resources :resenhas
  resources :estantes
  resources :exemplars
  resources :livros
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
