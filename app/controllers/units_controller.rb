class UnitsController < ApplicationController

  def index
    @units = Unit.all
  end
  
  def show
    @unit = Unit.(params[:id])
  end
  
  def new
    @unit = Unit.newW
  end
  
  def create
    @unit = Unit.new(unit_params)
    
    if @unit.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
    @unit = Unit.find(params[:id])
  end
  
  def update
    @unit= Unit.find(params[:id])

    if @unit.update_attributes(units_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
    
   def destroy
     @unit = Unit.find(params[:id])
     @unit.destroy
     redirect_to action: "index"
   end
  
  private
    def units_params
      params.require(:unit).permit(:code, :name)
    end
end
