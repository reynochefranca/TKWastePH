class RolesController < ApplicationController
  def index
    @roles = Role.all
  end
  
  def show 
    @role = Role.find(params[:id])
  end
  
  def new
    @role = Role.new
  end
  

  def create
    @role = Role.new(role_params)
   
    @role.save
    redirect_to action: "index"
  end
   
  private
    def role_params
      params.require(:role).permit(:name)
    end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
