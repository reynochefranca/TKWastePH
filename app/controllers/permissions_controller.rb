class PermissionsController < ApplicationController
  def index
    @permissions = Permission.all
  end
  
  def show 
    @permission = Permission.find(params[:id])
  end
  
  def new
    @permission = Permission.new
  end
  

  def create
    @permission = Permission.new(permission_params)
   
    @permission.save
    redirect_to action: "index"
  end
   
  private
    def permission_params
      params.require(:permission).permit(:permission_type, :started_at, :limited_at, :number, :pdf)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
end
