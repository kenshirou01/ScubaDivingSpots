class PrefecturesController < ApplicationController
  def show
    @prefecture = Prefecture.find(params[:id])
    @spots = @prefecture.spots
  end
end
