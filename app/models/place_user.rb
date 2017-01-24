class PlaceUser < ActiveRecord::Base
    has_many :places
    has_many :users
end
