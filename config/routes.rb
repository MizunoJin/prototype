Rails.application.routes.draw do
  root 'static_pages#index'
  get '/sample', to: 'static_pages#sample'
  post '/save', to: 'static_pages#save'

  resources :posts
  post '/posts/option', to: 'posts#option'
  post "posts/reply" => "posts#reply"
end
