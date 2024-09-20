class CreaturesController < ApplicationController
  before_action :set_creature, only: %i[show edit update destroy]

  # 一覧表示
  def index
    @creatures = Creature.all
  end

  # 詳細表示
  def show
  end

  # 新規作成フォームの表示
  def new
    @creature = Creature.new
  end

  # 編集フォームの表示
  def edit
  end

  # 新しい生き物を作成
  def create
    @creature = Creature.new(creature_params)
    if @creature.save
      redirect_to @creature, notice: 'Creature was successfully created.'
    else
      render :new
    end
  end

  def search
    if params[:query].present?
      # 生き物の名前にキーワードが含まれているものを検索
      @creatures = Creature.where("name LIKE ?", "%#{params[:query]}%")
    else
      # 検索クエリが空の場合はすべての生き物を表示
      @creatures = Creature.all
    end
  end

  # 生き物の更新
  def update
    if @creature.update(creature_params)
      redirect_to @creature, notice: 'Creature was successfully updated.'
    else
      render :edit
    end
  end

  # 生き物の削除
  def destroy
    @creature.destroy
    redirect_to creatures_url, notice: 'Creature was successfully destroyed.'
  end

  private

  # 設定された生き物を取得
  def set_creature
    @creature = Creature.find(params[:id])
  end

  # ストロングパラメータ
  def creature_params
    params.require(:creature).permit(:name, :description, :periods, :photo, spot_ids: [])
  end
end
