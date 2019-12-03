Rails.application.routes.draw do
  get 'islands/index'
  get 'islands/show'
  get 'islands/new'
  get 'islands/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :islands
end
