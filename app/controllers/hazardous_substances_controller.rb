class HazardousSubstancesController < ApplicationController
  def index
    @hazardous_substances = HazardousSubstance.all
  end
  
  def show 
    @hazardous_substance = HazardousSubstance.find(params[:id])
  end
  
  def new
    @hazardous_substance = HazardousSubstance.new
  end
  

  def create
    @hazardous_substance = HazardousSubstance.new(hazardous_substance_params)
   
    @hazardous_substance.save
    redirect_to action: "index"
  end
  
  def destroy
    @hazardous_substance = HazardousSubstance.find(params[:id])
    @hazardous_substance.destroy
    redirect_to action: "index"
  end
  
  def edit
     @hazardous_substance = HazardousSubstance.find(params[:id])
  end
  
  def update
    @hazardous_substance = HazardousSubstance.find(params[:id])
    if @hazardous_substance.update_attributes(hazardous_substance_params)
    redirect_to hazardous_substances_path, :notice => "Sucessfully Updated!"
  else
    render "edit"
    end
  end
   
  private
    def hazardous_substance_params
      params.require(:hazardous_substance).permit(:code, :name)
    end 

end
      
