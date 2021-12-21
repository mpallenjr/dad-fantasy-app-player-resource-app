class PlayerNewsHeadlinesController < ApplicationController
  def index

    #Pulls headlines for a specific person based on first and last name.  Should look for articles specifically within the last 24 hours.  Will list in order of 'popularity'.
    
    dt = Date.parse(Date.today.to_s)
    dy = Date.parse(Date.yesterday.to_s)
 
    first_name = params[:first_name]
    last_name = params[:last_name]
  
    response = HTTP.get("https://newsapi.org/v2/everything?from=#{dy}&to=#{dt}&q=#{first_name}-#{last_name}&sortBy=popularity&apiKey=#{Rails.application.credentials.newsapi}")
    render json: response.parse
    
  end
end
