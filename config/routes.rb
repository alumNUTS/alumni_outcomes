Rails.application.routes.draw do

	root 'sessions#new'

  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :students
  
  resources :surveys

  resources :officers do
	  resources :cohorts
	end

	resources :cohorts, only: [:show, :index]

end
