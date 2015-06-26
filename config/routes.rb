Rails.application.routes.draw do

	root 'sessions#new'

  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/send_survey/:id' => 'officers#send_survey'
  post '/cohorts/sort' => 'cohorts#sort'


  resources :students do
    resources :surveys
  end

  resources :officers do
	  resources :cohorts
	  resources :analytics
    resources :surveys
	end

	resources :cohorts, only: [:show, :index]

end
