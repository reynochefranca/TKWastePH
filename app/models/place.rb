class Place < ActiveRecord::Base
   # Query Interface: TraderPlace.joins(:place, :trader => [{trader_edi_user: :edi_user}, :user])
   # place has one trader_place
   has_one :trader_place
   
   # Query Interface: PlaceUser.joins(:user, :place)
   # place has one place_user
   has_one :place_user
end