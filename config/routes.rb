Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
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
