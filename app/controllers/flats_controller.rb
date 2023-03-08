require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit update destroy coordinates_array]

  # GET /flats
  def index
    @flats = Flat.all
  end

  # GET /flat/:id
  def show
    coordinates_array
  end

  # GET /flats/new
  def new
    @flat = Flat.new
  end

  # POST /flats
  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @flat
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def coordinates_array
    address = CGI.escape @flat.address
    api_key = 'pk.eyJ1Ijoid2VlcG90dHkiLCJhIjoiY2wyMGZlZ3Y1MHZzOTNrbXFnejJ3bnEwZyJ9.Oa2SzwF6YKqbLEQJvaTXFA'
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{address}.json?access_token=#{api_key}"
    data = JSON.parse(URI.open(url).read)
    data['features'].first['center']
  end


end
