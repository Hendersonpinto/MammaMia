Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, except: [:index] do
    resources :moms
  end
  get "moms", to: "moms#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
