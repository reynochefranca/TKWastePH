class WasteRegistrationsController < ApplicationController
  def index
    @waste_registrations = WasteRegistration.select("waste_registrations.id, waste_registrations.code, waste_registrations.name, waste_registrations.quantity, 
    waste_registrations.unit_id, units.name AS unit_name, 
    waste_registrations.waste_type_id, waste_types.name AS waste_name, 
    waste_registrations.shape_id, shapes.name AS shape_name, 
    waste_registrations.package_id, packages.name AS package_name ")
    .joins("INNER JOIN units ON waste_registrations.unit_id=units.id 
    INNER JOIN waste_types ON waste_registrations.waste_type_id=waste_types.id 
    INNER JOIN shapes ON waste_registrations.shape_id=shapes.id 
    INNER JOIN packages ON waste_registrations.package_id=packages.id")
  end

  def new
    @waste_registration = WasteRegistration.new

  end
  
  def show
    @waste_registration = WasteRegistration.find(params[:id])
  end
    
  
  def create
    @waste_registration = WasteRegistration.new(waste_registrations_params)
    @waste_registration.save
    redirect_to action: "index", notice: "Alright!"
  end
  
  def edit
    @waste_registration = WasteRegistration.find(params[:id])
  end
  
  def destroy
    @waste_registration = WasteRegistration.find(params[:id])
    @waste_registration.destroy
    redirect_to action: "index", notice: "Deleted"
  end

private
  def waste_registrations_params
    params.require(:waste_registration).permit(:code, :name, :quantity, :waste_type_id, :unit_id, :shape_id, :package_id, :trader_id)
  end
end
