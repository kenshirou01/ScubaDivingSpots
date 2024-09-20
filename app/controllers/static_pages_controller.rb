class StaticPagesController < ApplicationController
  def home
    @prefectures = Prefecture.all
    @creatures = Creature.all
  end

  def help
  end

  def about
  end

  def contact
  end
end
