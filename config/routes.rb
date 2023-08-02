Rails.application.routes.draw do
  
  get 'forms/user_details'
  get 'forms/address_details'
  get 'forms/office_details'

  get 'forms', to: 'forms#home'
  
  get 'search', to: 'search#search', as: :search

  get '/user_details', to: 'forms#user_details'
  post '/user_details', to: 'forms#create_user_details'
  get '/address_details', to: 'forms#address_details'
  post '/address_details', to: 'forms#create_address_details'
  get '/office_details', to: 'forms#office_details'
  post '/office_details', to: 'forms#create_office_details'

  get 'forms/home'
  devise_for :users
  root to: "forms#home"
  resources :users, only: [:home]
  devise_scope :user do  
  get '/users/sign_out' => 'devise/sessions#destroy' 
  end  
end
