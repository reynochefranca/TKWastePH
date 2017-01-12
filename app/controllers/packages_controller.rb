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
    
    if @package.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
     @package = Package.find(params[:id])
  end
  
  def update
    @package = Package.find(params[:id])
    
    if @package.update_attributes(package_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
    @package = Package.find(params[:id])
    @package.destroy
    redirect_to action: "index"
  end
  
  private
    def package_params
      params.require(:package).permit(:code, :name)
    end 

end
      
