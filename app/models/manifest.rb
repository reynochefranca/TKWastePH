class Manifest < ActiveRecord::Base
    has_one :category
    has_one :unit
    has_one :shape
    has_one :package
    has_one :hazardous_substance
    has_one :disposal_method
end
