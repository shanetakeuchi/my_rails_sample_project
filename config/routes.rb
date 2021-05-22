Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/citations',   to: 'static_pages#citations'
  get '/contact', to: 'static_pages#contact'
  get '/overview', to: 'static_pages#overview'
  get '/model', to: 'static_pages#model'
  get '/view', to: 'static_pages#view'
  get '/controller', to: 'static_pages#controller'
  
  get '/post', to: 'notes#new'
  
  resources :users
end
