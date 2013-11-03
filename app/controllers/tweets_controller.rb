class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('posted_at DESC').limit(7)
    render json: @tweets
  end
end