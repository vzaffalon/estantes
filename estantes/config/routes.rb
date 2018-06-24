Rails.application.routes.draw do
  resources :users
  resources :exemplars
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :resenhas
  resources :estantes
  resources :livros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
