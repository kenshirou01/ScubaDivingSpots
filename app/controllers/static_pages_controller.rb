class StaticPagesController < ApplicationController
  def home
    @prefectures = Prefecture.all
    @creatures = Creature.all
    @prefectures = Prefecture.joins(:spots).distinct.order(:name)
    @prefectures_with_spots = Prefecture.joins(:spots).distinct.pluck(:id)
  end
end
