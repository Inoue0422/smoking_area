class SpotsController < ApplicationController
  def index
  end
  
  def show
  end

  def new
    @spot = Spot.new
  end
  
  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to root_path
    else
      render :new
    end
  end

    private

    def spot_params
      params.require(:spot).permit(:name, :tobacco_id, :fence, :roof, :chair, :address, :latitude, :longitude)
    end
end
