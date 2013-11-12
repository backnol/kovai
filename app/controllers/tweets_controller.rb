class TweetsController < ApplicationController
  def index
    @tweets = Tweet.last(7)
    render json: @tweets
  end
end