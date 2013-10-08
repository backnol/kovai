class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('posted_at DESC').first(3)
    render json: @tweets
  end
end