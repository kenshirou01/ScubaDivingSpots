class PrefecturesController < ApplicationController
  # Get /prefectures routes
  def index
    @prefectures = Prefecture.all
  end

  # Get /prefectures/:id
  def show
    @prefecture = Prefecture.find(params[:id])
    @spots = @prefecture.spots
  end
end
