class PrefecturesController < ApplicationController
  # Get /prefectures/:id
  def show
    @prefecture = Prefecture.find(params[:id])
    @spots = @prefecture.spots
  end
end
