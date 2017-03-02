class WasteType < ActiveRecord::Base
    belongs_to :waste_registration
    has_one :contact
end
