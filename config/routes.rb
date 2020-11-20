Rails.application.routes.draw do
  # use_doorkeeper
  use_doorkeeper do
    controllers applications: 'oauth/applications'
  end
  devise_for :users

  namespace :api do
    get "notes" => 'notes#index'
    # get "notess" => 'notes#show'
    get "notes/:id" => 'notes#show'
  end

  root "main#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
