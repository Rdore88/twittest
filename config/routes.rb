Rails.application.routes.draw do

  resources :sessions

  resources :users, only: ["create", "new", "show"] do

  end

  resources :tweets

  root controller: "tweets", action: "index"





end
