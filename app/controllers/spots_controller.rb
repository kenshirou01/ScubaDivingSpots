class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update]

  def index
    @prefectures = Prefecture.includes(:spots).order(:name)
  end

  def show
    @prefecture = @spot.prefecture
    @creatures = @spot.creatures
  end

  def edit
    # @spotはbefore_actionで設定されている
    @creatures = Creature.all # 全ての生き物を取得
  end

  def update
    if @spot.update(spot_params)
      flash[:success] = t('flash.success.spot_updated')
      redirect_to @spot
    else
      render :edit
    end
  end

  private

  def set_spot
    @spot = Spot.includes(:creatures).find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :address, :description, :image, :prefecture_id, creature_ids: [])
  end
end
