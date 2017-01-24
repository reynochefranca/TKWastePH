class Trader < ActiveRecord::Base
    belongs_to :trader_place
    belongs_to :trader
    has_many :users
end
