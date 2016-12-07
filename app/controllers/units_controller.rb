class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end
  
  def show 
    @unit = Unit.find(params[:id])
  end
  
  def new
    @unit = Unit.new
  end
  

  def create
    @unit = Unit.new(unit_params)
   
    @unit.save
    redirect_to action: "index"
  end
   
  private
    def unit_params
      params.require(:unit).permit(:code, :name)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end

  
  
end
