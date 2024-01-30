class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]

  def index
    @spots = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      current_user.spots << @spot
      redirect_to @spot, notice: '喫煙所が作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to @spot, notice: '喫煙所が作成されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @spot.image.purge if @spot.image.attached?
    @spot.user_spots.destroy_all
    @spot.destroy
    redirect_to spots_url, notice: '喫煙所が削除されました。'
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :tobacco_id, :fence, :roof, :chair, :latitude, :longitude, :image)
  end
end
