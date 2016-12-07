class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end
  
  def show 
    @package = Package.find(params[:id])
  end
  
  def new
    @package = Package.new
  end
  

  def create
    @package = Package.new(package_params)
   
    @package.save
    redirect_to action: "index"
  end
   
  private
    def package_params
      params.require(:package).permit(:code, :name)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
