Rails.application.routes.draw do
  resources :tweets
  get 'hotwire/index'
  get 'jquery_ui/index'
  get 'tabulator/index'
  get 'datatables/index'
  root to: 'home#index'
  post '/likes/create/:tweet_id', to: "likes#create", as: "tweet_like"
  post '/retweet/create/:tweet_id', to: "retweet#create", as: "tweet_retweet"
end
