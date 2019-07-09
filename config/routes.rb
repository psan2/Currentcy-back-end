Rails.application.routes.draw do

  resources :users
  resources :trackers, only: [:index, :new, :delete]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
