class ContractsController < ApplicationController
  def index
      @places = TraderPlace
                      .select("trader_places.id, traders.id AS trader_id, places.id AS place_id, places.name_kanji AS place_kanji, places.name_kana AS place_kana, places.zipcode, places.prefecture, places.tel1, places.tel2, places.address, places.city, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email, edi_users.connection_registration_number, edi_users.password, edi_users.registration_user1_name, edi_users.registration_user1_email, edi_users.registration_user2_name, edi_users.registration_user2_email, edi_users.registration_user3_name, edi_users.registration_user3_email")
                      .joins(:place, :trader => [{trader_edi_user: :edi_user}, :user]) 
                      .where("places.name_kanji is not null and traders.division is null and places.id = ?", params[:place_id])
     
      @waste_types = WasteType.all
      @categories = Category.all
      @shapes = Shape.all
      @packages = Package.all
      @units = Unit.all
      @hazardous_substances = HazardousSubstance.all
      @disposal_methods = DisposalMethod.all
      
      @contracts = Contract
                    .select("contracts.id, contracts.expected_amount, waste_types.name AS wt_name, categories.name AS ct_name, shapes.name AS sh_name, units.name AS un_name, packages.name AS pk_name, hazardous_substances.name AS hs_name, disposal_methods.name AS dm_name")
                    .joins(:waste_type, :category, :shape, :unit, :package, :hazardous_substance, :disposal_method, :place)
                    .where("places.id = ?", params[:place_id])
                    
      @contract = Contract.new
  end
  
  
  def create
      if @contract = Contract.new(waste_reg_params)
         @contract.save
         redirect_to :back
      else
         redirect_to :back
      end
  end
  

  
  private
    def waste_reg_params
      params.require(:contract).permit(:first_party_id, :place_id, :waste_type_id, :category_id, :expected_amount, :shape_id, :unit_id, :package_id, :hazardous_substance_id, :disposal_method_id)
    end

end
