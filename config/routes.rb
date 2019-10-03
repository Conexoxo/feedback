Rails.application.routes.draw do
  get 'images/new'
  get 'home/index'
  resources :images
  devise_for :teachers
  devise_for :estudiantes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "home#index"
end