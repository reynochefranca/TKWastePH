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
    @waste_type = Shape.new(wastetype_params)
    
    if @waste_type.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
    @waste_type = WasteType.find(params[:id])
    @waste_type.destroy
    redirect_to action: "index"
  end
  
  def edit
     @waste_type = WasteType.find(params[:id])
  end
  
  def update
    @waste_type = WasteType.find(params[:id])
    if @waste_type.update_attributes(wastetype_params)
    redirect_to waste_types_path, :notice => "Sucessfully Updated!"
  else
    render "edit"
    end
  end
  
  private
    def wastetype_params
      params.require(:waste_type).permit(:code, :name)
    end
    
end
