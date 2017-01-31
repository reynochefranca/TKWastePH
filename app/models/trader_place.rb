class TraderPlace < ActiveRecord::Base
   # Trader_place belongs to trader and belongs to place and has one user through trader (trader, place, user)
   belongs_to :trader
   belongs_to :place
   has_one :user, :through => :trader
   
   ransack_alias :trader, :trader_name_kanji_or_trader_name_kana
   ransack_alias :place, :place_tel1_or_place_tel2
   ransack_alias :user, :user_name_kanji_or_user_name_kana_cont

end
