class PermissionsController < ApplicationController
  def index
    # If no search params, default to empty search
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search = Permission.search(params[:q])
      @permissions = @search.result  
    else
      @search = Permission.search
      @permissions = [] 
    end
    
    @waste_types = WasteType.all
    @roles = Role.all
    @categories = Category.all
    @places = Place.all
    # @waste_types = Permission.select("waste_types.id, waste_types.name AS permit_type, permissions.permit_name")
    # .joins("INNER JOIN waste_types ON permissions.permit_type=waste_types.id")
    
    # @roles = Permission.select("roles.id, roles.name AS permission_type, permissions.permit_name")
    # .joins("INNER JOIN roles ON permissions.permission_type=roles.id")
    
    # @categories = Permission.select("categories.id, categories.name AS permitted_waste_classification, permissions.permit_name")
    # .joins("INNER JOIN categories ON permissions.permitted_waste_classification=categories.id")
    
    # @places = Permission.select("places.id, places.prefecture AS allowed_area, places.city AS permitted_municipality, permissions.permit_name")
    # .joins("INNER JOIN places ON permissions.allowed_area=places.id")
  end
  

end
