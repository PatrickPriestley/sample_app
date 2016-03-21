Rails.application.routes.draw do
  get 'dogs_dow/dogs'

  get 'dollar_cost/dollar'

  get 'value_averaging/value'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root               'static_pages#home'
  get 'about'     => 'static_pages#about'
  get 'contact'   => 'static_pages#contact'
  get 'signup'    => 'users#new'
  get 'login'     => 'sessions#new'
  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'value'     => 'value_averaging#value'
  get 'dollarcost'=> 'dollar_cost#dollar'
  get 'dogs'      => 'dogs_dow#dogs'

  resources :value
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
