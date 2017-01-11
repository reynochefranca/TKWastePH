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
    
    if @role.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
     @role = Role.find(params[:id])
  end
  
  def update
    @role= Role.find(params[:id])

    if @role.update_attributes(role_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to action: "index"
  end
  
  private
    def role_params
      params.require(:role).permit(:name)
    end 
end
