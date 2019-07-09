Rails.application.routes.draw do
  resources :user_currencies, only: [:index, :new, :delete]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
