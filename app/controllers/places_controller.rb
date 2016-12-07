class PlacesController < ApplicationController
  def index
    @places = Place.all
  end
  
  def show 
    @place = Place.find(params[:id])
  end
  
  def new
    @place = Place.new
  end
  

  def create
    @place = Place.new(place_params)
   
    @place.save
    redirect_to action: "index"
  end
   
  private
    def place_params
      params.require(:place).permit(:code, :name_kanji, :name_kana, :abbreviation, :zipcode, :prefecture, :city, :address, :tel1, :tel2)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end

end
