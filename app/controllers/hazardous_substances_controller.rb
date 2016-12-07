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
   
  private
    def hazardous_substance_params
      params.require(:hazardous_substance).permit(:code, :name)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end


  
  

end
