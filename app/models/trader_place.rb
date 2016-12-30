class TraderPlace < ActiveRecord::Base
    has_many :users, :places
end


