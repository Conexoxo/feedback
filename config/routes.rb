Rails.application.routes.draw do
  get 'images/new'
  get 'home/index'
  resources :images
  devise_for :teachers
  devise_for :student
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
	root 'welcome#index'
  
  resources :teachers, only: [:index, :show, :update], path: 'profesores', as: 'user', controller: :users do
		resources :comments, except: :index
  end

  resources :students, only: [:index, :show], path: 'alumnos', controller: :users

  resources :courses, only: [:new, :edit, :index, :show, :update], path:'cursos', path_names: { new: 'crear', edit: 'editar' } do
    resources :comments, except: :index
  end

  devise_for :users, path: 'usuario', path_names: {
		sign_in: 'ingresar', sign_out: 'salir', 
		password: 'contraseña', confirmation: 'verificar',
		sign_up: 'registro', edit: 'editar'
  }
end
=======
root to: "home#index"
end
>>>>>>> 56d0a17c5bc229ad199dd81940324efeb5a05171
