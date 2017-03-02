class PlacesController < ApplicationController
  def index
    @places = Place.all
    @place = Place.new
  end
  
  def show 
    @place = Place.find(params[:id])
  end
  
  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    
    if @place.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
     @place = Place.find(params[:id])
  end
  
  def update
    @place= Place.find(params[:id])

    if @place.update_attributes(place_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to action: "index"
  end
  
  private
    def place_params
      params.require(:place).permit(:code, :name_kanji, :name_kana, :abbreviation, :zipcode, :prefecture, :city, :address, :tel1, :tel2)
    end
end