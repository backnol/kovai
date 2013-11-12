class InstasController < ApplicationController
  def index
    @instas = Insta.last(12)
    render json: @instas
  end
end
