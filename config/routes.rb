Rails.application.routes.draw do
  devise_for :profesors
  devise_for :estudiantes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
