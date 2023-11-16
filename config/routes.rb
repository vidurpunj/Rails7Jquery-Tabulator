Rails.application.routes.draw do
  get 'user_friends/index'
  resources :users
  resources :posts
  resources :blogs
  resources :tweets
  get 'hotwire/index'
  get 'jquery_ui/index'
  get 'tabulator/index'
  get 'datatables/index'
  root to: 'home#index'
  post '/likes/create/:tweet_id', to: "likes#create", as: "tweet_like"
  post '/retweet/create/:tweet_id', to: "retweet#create", as: "tweet_retweet"
  post '/blog_likes/create/:blog_id', to: "blog_likes#create", as: "blog_likes"
  post '/blog_reposts/create/:blog_id', to: "blog_reposts#create", as: "blog_reposts"

  post '/post_likes/create/:post_id', to: 'post_likes#create', as: 'post_likes'
  post '/post_reposts/create/:post_id', to: 'post_reposts#create', as: 'post_reposts'

  get 'user_friends/index', to: 'user_friends#index', as: 'users_list'
  get 'user_friends/user/:user_id', to: 'user_friends#friends', as: 'users_friends'
end
