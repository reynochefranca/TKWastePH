class TraderPlacesController < ApplicationController
  def index
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search = TraderPlace.search(params[:q])
      # Joining Nested Associations (Multiple Level)
      @trader_places = @search
                        .result(distinct: true)
                        .select("trader_places.id, traders.id AS trader_id, traders.name_kanji AS trader_kanji, traders.name_kana AS trader_kana, places.zipcode, places.prefecture, places.tel1, places.tel2, places.address, places.city, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email, edi_users.connection_registration_number, edi_users.password, edi_users.registration_user1_name, edi_users.registration_user1_email, edi_users.registration_user2_name, edi_users.registration_user2_email, edi_users.registration_user3_name, edi_users.registration_user3_email")
                        .joins(:place, :trader => [{trader_edi_user: :edi_user}, :user]) 
                        .where("places.name_kanji is null and traders.division is null")
    else
      @search = TraderPlace.search
      @trader_places = []
    end
    
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search = TraderPlace.search(params[:q])
      # Joining Nested Associations (Multiple Level)
      @places = @search
                  .result(distinct: true)
                  .select("trader_places.id, traders.id AS trader_id, places.id AS place_id, places.name_kanji AS place_kanji, places.name_kana AS place_kana, places.zipcode, places.prefecture, places.tel1, places.tel2, places.address, places.city, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email, edi_users.connection_registration_number, edi_users.password, edi_users.registration_user1_name, edi_users.registration_user1_email, edi_users.registration_user2_name, edi_users.registration_user2_email, edi_users.registration_user3_name, edi_users.registration_user3_email")
                  .joins(:place, :trader => [{trader_edi_user: :edi_user}, :user]) 
                  .where("places.name_kanji is not null and traders.division is null")
    else
      @search = TraderPlace.search
      @places = []
    end
  end
end
