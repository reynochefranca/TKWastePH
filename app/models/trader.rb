class Trader < ActiveRecord::Base
   # Trader has one user and has one trader_place (trader, place, user)
   has_one :user
   has_one :trader_place


   # has_one :place, :through => :trader_place
end
