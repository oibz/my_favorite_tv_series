Rails.application.routes.draw do
  get '/tv_shows', to: 'tv_shows#index'
  get '/welcome', to: 'pages#welcome'
  root 'pages#welcome'
end
