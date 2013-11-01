class InstasController < ApplicationController
  def index
    @instas = Insta.order('posted_at DESC')
    render json: @instas
  end
end
