Rails.application.routes.draw do
  resources :kombucha do
    resources :review
  end
end
