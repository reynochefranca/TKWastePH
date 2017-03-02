class TraderPlace < ActiveRecord::Base
   # Query Interface: TraderPlace.joins(:place, :trader => [{trader_edi_user: :edi_user}, :user])
   # trader_place belongs to trader and belongs to place and has one user through trader 
   belongs_to :trader
   belongs_to :place
   has_one :user, :through => :trader
   
   # edi_user through trader
   has_one :edi_user, :through => :trader
   
   # modal traders search ransack alias
   ransack_alias :trader, :trader_name_kanji_or_trader_name_kana
   ransack_alias :place, :place_tel1_or_place_tel2
   ransack_alias :place, :place_name_kanji_or_place_name_kana
   ransack_alias :user, :user_name_kanji_or_user_name_kana

end
