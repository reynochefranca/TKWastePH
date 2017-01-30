class WasteRegistration < ActiveRecord::Base
    has_one :unit
    has_one :package
    has_one :trader
    has_one :waste_type
    has_one :shape
    
    validates_presence_of :name, presence => :true
end
