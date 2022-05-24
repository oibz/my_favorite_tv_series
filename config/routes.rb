Rails.application.routes.draw do
  resources :tv_shows
  get '/tv_shows', to: 'tv_shows#index'
  get '/welcome', to: 'pages#welcome'
  root 'pages#welcome'
  post '/tv_shows', to: 'tv_shows#create'

  resources :tv_shows do
    member do
      get 'about'
    end
  end

  resources :tv_shows do
    collection do
      get 'search'
    end
  end
end
