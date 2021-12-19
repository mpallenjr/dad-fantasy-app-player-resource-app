Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "player_news_headlines" => "player_news_headlines#index"
  
  get "twitter_username_search_results" => "twitter_username_search_results#index"


end
