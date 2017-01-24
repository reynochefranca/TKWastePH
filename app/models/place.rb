class Place < ActiveRecord::Base
    belongs_to :trader_place
    belongs_to :place_user
end
