PostsApp::Application.routes.draw do
  root 'posts#index' 


  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :posts
  resources :tags, only: [:create, :destroy]
end
