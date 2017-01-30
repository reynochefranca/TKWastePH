class Unit < ActiveRecord::Base
    belongs_to :waste_registration
    belongs_to :manifest
end
