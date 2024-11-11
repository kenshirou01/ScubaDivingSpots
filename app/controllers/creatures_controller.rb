class CreaturesController < ApplicationController
  before_action :set_creature, only: %i[show edit update destroy]
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @creatures = Creature.all
  end

  def show
  end

  def new
    @creature = Creature.new
  end

  def edit
  end

  def create
    @creature = Creature.new(creature_params)
    if @creature.save
      redirect_to @creature, notice: 'Creature was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
    if params[:query].present?
      @creatures = Creature.where("name LIKE ?", "%#{params[:query]}%")
    else
      @creatures = Creature.all
    end
  end

  def update
    if @creature.update(creature_params)
      redirect_to @creature, notice: 'Creature was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @creature.destroy
    redirect_to creatures_url, notice: 'Creature was successfully destroyed.'
  end

  private

  def set_creature
    @creature = Creature.find(params[:id])
  end

  def creature_params
    params.require(:creature).permit(:name, :description, :periods, :photo, spot_ids: [])
  end
end
