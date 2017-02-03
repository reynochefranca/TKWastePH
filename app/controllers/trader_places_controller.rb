class TraderPlacesController < ApplicationController
  def index
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search = TraderPlace.ransack(params[:q])
      # Joining Nested Associations (Multiple Level)
      @trader_places = @search
                        .result(distinct: true)
                        .select("traders.id AS trader_id, traders.name_kanji AS trader_kanji, traders.name_kana AS trader_kana, places.id AS place_id, places.zipcode, places.prefecture, places.tel1, places.tel2, places.address, places.city, users.id AS user_id, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email, edi_users.id AS edi_user_id, edi_users.connection_registration_number, edi_users.password, edi_users.registration_user1_name, edi_users.registration_user1_email, edi_users.registration_user2_name, edi_users.registration_user2_email, edi_users.registration_user3_name, edi_users.registration_user3_email")
                        .joins(:place, :trader => [{trader_edi_user: :edi_user}, :user]) 
    else
      @search = TraderPlace.ransack
      @trader_places = []
    end
  end  
  
  def selected
    @place_users = PlaceUser
                      .select("places.id AS place_id, places.code, places.name_kanji AS place_kanji, places.name_kana AS place_kana, places.zipcode, places.prefecture, places.city, places.address, places.tel1, places.tel2, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email, users.trader_id")
                      .joins(:place, :user)
                      .where("users.trader_id = ?", params[:trader_id])
 
  end
end
