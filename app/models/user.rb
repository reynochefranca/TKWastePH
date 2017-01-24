class User < ActiveRecord::Base
    belongs_to :place_user
    has_many :traders
end
