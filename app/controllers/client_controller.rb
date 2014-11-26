class ClientController < ApplicationController
  def create
    current_user.twitter.update(params[:tweet][:tweet_content])
    redirect_to root_url, :notice => 'Tweet successfully posted'
  end

end
