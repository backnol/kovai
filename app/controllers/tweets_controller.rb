class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('posted_at DESC').first(4)
    render json: @tweets
  end
end