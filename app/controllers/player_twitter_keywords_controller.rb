class PlayerTwitterKeywordsController < ApplicationController
  def index

    first_name = params[:first_name]
    last_name = params[:last_name]
    response = HTTP.auth("Bearer #{Rails.application.credentials.twitterapi}").get("https://api.twitter.com/2/tweets/search/recent?query=#{first_name}%20#{last_name}%20-is%3Aretweet")

    render json: response.parse
  end
end
