class PlayerNewsHeadlinesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?from=2021-12-18&to=2021-12-19&q=Tom-Brady&sortBy=popularity&apiKey=#{Rails.application.credentials.newsapi}")
    render json: response.parse

    
  end
end
