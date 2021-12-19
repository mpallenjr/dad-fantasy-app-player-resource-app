class PlayerNewsHeadlinesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/top-headlines?q=NFL&country=us&category=sports&apiKey=#{Rails.application.credentials.newsapi}")
    render json: response.parse
  end
end
