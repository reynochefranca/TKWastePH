class PlaceUser < ActiveRecord::Base
    has_many :traders, :place
end