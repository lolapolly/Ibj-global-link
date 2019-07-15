Rails.application.routes.draw do
  get 'items/index'
  get 'items/new'
  get 'items/create'
  get 'items/edit'
  get 'items/show'
  get 'items/update'
  get 'items/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    resources :purchases, only: [:new, :create, :show]
  end
end
