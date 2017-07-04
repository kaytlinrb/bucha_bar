Rails.application.routes.draw do
  root :to => 'home#home'

  resources :kombuchas do
    resources :reviews
  end
end
