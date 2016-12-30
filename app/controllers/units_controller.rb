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
  
  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    redirect_to action: "index"
  end
  
  def edit
     @unit = Unit.find(params[:id])
  end
  
  def update
    @unit = Unit.find(params[:id])
    if @unit.update_attributes(unit_params)
    redirect_to units_path, :notice => "Sucessfully Updated!"
    else
    render "edit"
    end
  end
  
  private
    def unit_params
      params.require(:unit).permit(:code, :name)
    end 

end
      
