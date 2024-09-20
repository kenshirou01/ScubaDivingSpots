class SpotsController < ApplicationController
  before_action :set_spot, only: [:show]

  def show
    @prefecture = Prefecture.find(params[:prefecture_id])
    @spots = @prefecture.spots
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :address, :description, :image, :prefecture_id)
  end
end
