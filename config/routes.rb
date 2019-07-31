Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    resources :purchases, only: [:new, :create, :show]
  end
  get 'my_profile', to: 'pages#profile', as: :my_profile
end
