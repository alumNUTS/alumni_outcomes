Rails.application.routes.draw do

	root 'sessions#new'

  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :students do
    resources :surveys
  end
  
  resources :officers do
	  resources :cohorts
	end

	resources :cohorts, only: [:show]

end
