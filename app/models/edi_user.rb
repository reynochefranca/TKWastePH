class EdiUser < ActiveRecord::Base
    # Query Interface: TraderPlace.joins(:place, :trader => [{trader_edi_user: :edi_user}, :user])
    # edi_user has one trader_edi_user
    has_one :trader_edi_user
end
