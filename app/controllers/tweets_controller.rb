class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('posted_at DESC').limit(5)
    render json: @tweets
  end
end