class FlatsController < ApplicationController
  # GET /flats
  def index
    @flats = Flat.all
  end

  # GET /flat/:id
  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

end
