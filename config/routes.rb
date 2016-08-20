Rails.application.routes.draw do
  get 'homepage/index'

  root 'homepage#index'

  resources :categories
  resources :terms do
    collection do
      get 'error'
    end
  end

  # User
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # Session
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
