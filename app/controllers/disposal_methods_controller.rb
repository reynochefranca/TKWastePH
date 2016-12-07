class DisposalMethodsController < ApplicationController
  def index
    @disposal_methods = DisposalMethod.all
  end
  
  def show 
    @disposal_method = DisposalMethod.find(params[:id])
  end
  
  def new
    @disposal_method = DisposalMethod.new
  end
  

  def create
    @disposal_method = DisposalMethod.new(disposal_method_params)
   
    @disposal_method.save
    redirect_to action: "index"
  end
   
  private
    def disposal_method_params
      params.require(:disposal_method).permit(:code, :name)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end

end
