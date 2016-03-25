Rails.application.routes.draw do

 resources :teams
 resources :users

  get  'signup' => 'teams#new'
  get 'main'=> 'teams#show'

  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/start'


  get 'login_user' => 'sessions_for_users#new'
  post 'login_user'=> 'sessions_for_users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'signup_users' => 'users#new'
end
