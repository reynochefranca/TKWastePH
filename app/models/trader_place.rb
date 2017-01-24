class TraderPlace < ActiveRecord::Base
    has_many :places
    has_many :traders
end
