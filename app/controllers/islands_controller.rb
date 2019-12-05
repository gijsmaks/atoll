class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index

    @islands = Island.geocoded #Island.wherenot(lat:nil, lng: nil)
    @markers = @islands.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { islands: island }),
        image_url: helpers.asset_url('https://avatars2.githubusercontent.com/u/5470001?s=200&v=4')
      }
    end
  end

  def show
    @island = Island.find(params[:id])
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def island_params
    params.require(:island).permit(:name, :description, :price, :photo, :location)
  end
end
