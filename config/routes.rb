Rails.application.routes.draw do
  devise_for :users
  get 'controlador/index'
  root 'controlador#index'
  resources :tasks
  resources :projects
  resources :integrants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
