
class WasteTypesController < ApplicationController
  def index
    @waste_types = WasteType.all
  end
  
  def show 
    @waste_type = WasteType.find(params[:id])
  end
  
  def new
    @waste_type = WasteType.new
  end
  

  def create
    @waste_type = WasteType.new(wastetype_params)
   
    @waste_type.save
    redirect_to action: "index"
  end
   
  private
    def wastetype_params
      params.require(:waste_type).permit(:waste_type, :code, :name)
    end
  
    
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end

end

