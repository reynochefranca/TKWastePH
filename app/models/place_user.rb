class PlaceUser < ActiveRecord::Base
    # Query Interface: PlaceUser.joins(:user, :place)
    # place_user belongs to place and belongs to user
    belongs_to :place
    belongs_to :user
    
end