class NewDischargeBusinessRegistrationsController < ApplicationController
  # before_action :set_category, only: [:show, :edit, :update, :destroy]
  # respond_to :json, :html
  
  def index
    
  end
  
 
  def trader_search
    # @cat_search_results = Category.where("keyword LIKE LOWER(?)", "%#{params[:keyword].downcase}%")
   #  respond_with(@cat_search_results, :include => :status)
  end
end
