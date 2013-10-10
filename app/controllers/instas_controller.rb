class InstasController < ApplicationController
  def index
    @instas = Insta.order('posted_at DESC').first(6)
    render json: @instas
  end
end
