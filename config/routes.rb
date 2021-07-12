Rails.application.routes.draw do
  root 'static_pages#index'
  get '/sample', to: 'static_pages#sample'
  post '/save', to: 'static_pages#save'
end
