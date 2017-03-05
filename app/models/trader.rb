class Trader < ActiveRecord::Base
   # Query Interface: TraderPlace.joins(:place, :trader => [{trader_edi_user: :edi_user}, :user])
   # trader has one user and has one trader_place
   has_one :user
   has_one :trader_place

   # trader has one trader_edi_user
   has_one :trader_edi_user
   
   def self.search(query)
      where("traders.name_kanji like ? or traders.name_kana like ?", "%#{query}%", "%#{query}%") 
   end
end
