Rails.application.routes.draw do
  get '/' => 'home#index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  #get 'contacts' => 'contacts#new'
  resource :contacts, only: [ :new, :create ], path_names: { :new => '' }
  resources :articles
end
