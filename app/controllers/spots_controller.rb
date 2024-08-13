class SpotsController < ApplicationController
  before_action :set_spot, only: [:show]

  def index
    @prefecture = Prefecture.find(params[:prefecture_id])
    @spots = @prefecture.spots
  end

  def show
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to @spot, notice: 'Spot was successfully created.'
    else
      render :new
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :address, :description, :image, :prefecture_id)
  end
end
