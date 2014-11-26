class ClientController < ApplicationController
  def create
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        =  Rails.application.secrets.twitter_api_key
      config.consumer_secret     =  Rails.application.secrets.twitter_api_secret
      config.access_token        = "1173855871-scxJRJbTJPRYVES3rDhGDsI56pCyktcZeDdfrkb"
      config.access_token_secret = "9S5j7z7bTfHdE8tpc0lrGPKbIrw5SPlRf3SJLdEYsVQM9"
    end

    client.update(params[:tweet][:tweet_content])
    redirect_to root_url, :notice => 'Tweet successfully posted'
  end

end
