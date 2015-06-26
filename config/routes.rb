Rails.application.routes.draw do

	root 'sessions#new'

  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/send_survey/:id' => 'officers#send_survey'
  post '/cohorts/sort' => 'cohorts#sort'


  resources :students do
    resources :surveys, only: [:new, :create]
  end

  resources :officers do
	  resources :cohorts
	  resources :analytics
	end


	resources :cohorts, only: [:show, :index] do
    resources :surveys, only: [:show, :index]
  end

end
