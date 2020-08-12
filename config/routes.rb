Rails.application.routes.draw do
  resources :courses
  resources :courses do
    resources :reviews
end
end