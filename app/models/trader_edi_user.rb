class TraderEdiUser < ActiveRecord::Base
    # Query Interface: TraderPlace.joins(:place, :trader => [{trader_edi_user: :edi_user}, :user])
    # trader_edi_user belongs to trader and belongs to edi_user
    belongs_to :trader
    belongs_to :edi_user
end
