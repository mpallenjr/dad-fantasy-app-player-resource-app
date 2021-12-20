class TwitterUsernameSearchResultsController < ApplicationController
  def index
    
    response = HTTP.auth("Bearer #{Rails.application.credentials.twitterapi}").get("https://api.twitter.com/2/tweets/search/recent?query=fantasy%20basketball%20dfs%20-is%3Aretweet")

    render json: response.parse
  end
end
