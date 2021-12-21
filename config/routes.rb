Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  ### NEWS API Route for headlines on searched first and last name
  get "player_news_headlines" => "player_news_headlines#index"

  ### TWITTER API recent tweets for the searched first and last name
  get "player_twitter_keywords" => "player_twitter_keywords#index"


end
