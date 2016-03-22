Rails.application.routes.draw do

 resources :teams
 resources :users
  get  'signup' => 'teams#new'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/start'

  get 'signup_users' => 'users#new'
end
