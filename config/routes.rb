Rails.application.routes.draw do

  resources :users, only: [:create, :new] do
    resources :tweets, only: [:index]
  end

  resources :tweets

  get "/sessions", controller: :sessions, action: :new

end
