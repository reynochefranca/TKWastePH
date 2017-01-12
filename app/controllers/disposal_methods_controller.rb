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
    @disposal_method = DisposalMethod.new(disposalmethods_params)
    
    if @disposal_method.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
     @disposal_method = DisposalMethod.find(params[:id])
  end
  
  def update
    @disposal_method = DisposalMethod.find(params[:id])

    if @disposal_method.update_attributes(disposalmethods_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
     @disposal_method = DisposalMethod.find(params[:id])
     @disposal_method.destroy
     redirect_to action: "index"
  end
  
  private
    def disposalmethods_params
      params.require(:disposal_method).permit(:code, :name)
    end

end
