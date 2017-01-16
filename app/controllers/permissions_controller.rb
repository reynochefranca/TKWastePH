class PermissionsController < ApplicationController
  def index
    @permissions = Permission.all
    @waste_types = WasteType.all.group(:id, :code, :name)
    @roles = Role.all.group(:id, :name)
    @categories = Category.all.group(:id, :code, :name)
    @places = Place.all.group(:id, :city, :prefecture)
  end
  
  def show 
    @permission = Permission.find(params[:id])
  end
  
  def new
    @permission = Permission.new
  end

  def create
    @permission = Permission.new(permission_params)
    
    if @permission.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def edit
     @permission = Permission.find(params[:id])
     @waste_types = WasteType.all.group(:id, :code, :name)
     @roles = Role.all.group(:id, :name)
     @categories = Category.all.group(:id, :code, :name)
     @places = Place.all.group(:id, :city, :prefecture)
  end
  
  def update
    @permission = Permission.find(params[:id])

    if @permission.update_attributes(permission_params)
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end
  
  def destroy
    @permission = Permission.find(params[:id])
    @permission.destroy
    redirect_to action: "index"
  end
  
  private
    def permission_params
      params.require(:permission).permit(:permit_type, :permission_type, :permit_number, :permitted_waste_classification, :permit_name, :allowed_area, :permitted_municipality, :started_at, :limited_at, :industrial_waste_paid_certification_category, :permit_pdf)
    end
end
