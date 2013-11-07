class InstasController < ApplicationController
  def index
    @instas = Insta.order('posted_at DESC').last(12)
    render json: @instas
  end
end
