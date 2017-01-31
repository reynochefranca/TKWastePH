class TraderPlacesController < ApplicationController
  def index
  
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search = TraderPlace.ransack(params[:q])
      @traders_places_users = @search
                                .result(distinct: true)
                                .select("trader_places.id, traders.id AS trader_id, traders.name_kanji AS trader_kanji, traders.name_kana AS trader_kana, places.id AS place_id, places.zipcode, places.prefecture, places.tel1, places.tel2, places.address, places.city, users.id AS user_id, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email")
                                .joins(:trader, :place, :user) 
                                
                                # Joining Nested Associations (Multiple Level)
                                # .result(distinct: true)
                                # .select("trader_places.id, traders.id AS trader_id, traders.name_kanji AS trader_kanji, traders.name_kana AS trader_kana, places.id AS place_id, places.zipcode, places.prefecture, places.tel1, places.tel2, places.address, places.city, users.id AS user_id, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email, edi_users.id AS edi_user_id, edi_users.connection_registration_number, edi_users.password, edi_users.registration_user1_name, edi_users.registration_user1_email, edi_users.registration_user2_name, edi_users.registration_user2_email, edi_users.registration_user3_name, edi_users.registration_user3_email")
                                # .joins(:trader, :place, :user, :trader_edi_user, :edi_user) 
    else
      @search = TraderPlace.ransack
      @traders_places_users = []
    end
    
    #@business_places_users = PlaceUser
                         
    
  end
  

 
end
