Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  root "main#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
