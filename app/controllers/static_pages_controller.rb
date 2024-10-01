class StaticPagesController < ApplicationController
  def home
    @prefectures = Prefecture.all
    @creatures = Creature.all
    @prefectures = Prefecture.includes(:spots).order(:name)
  end
end
