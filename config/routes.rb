Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'faucet#index'
  get 'money', to: 'money#index'
  post 'faucet', to: 'faucet#create'
  resources :money, only: :index
  namespace :api do
    resources :money, only: :show, defaults: { format: 'json' }
  end
end
