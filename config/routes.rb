Rails.application.routes.draw do
  resources :courses do
    resources :reviews
end
end