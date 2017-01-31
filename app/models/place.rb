class Place < ActiveRecord::Base
   # Place has one trader_place (trader, place, user)
   has_one :trader_place

   # has_one :trader, :through => :trader_place
   # has_one :user, :through => :place_user
end