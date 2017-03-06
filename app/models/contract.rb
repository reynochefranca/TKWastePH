class Contract < ActiveRecord::Base
    belongs_to :contract_process
    belongs_to :waste_type
    belongs_to :category
    belongs_to :place
    belongs_to :unit
    belongs_to :shape
    belongs_to :package
    belongs_to :hazardous_substance
    belongs_to :disposal_method
    
    has_one :contract_manifest
    has_many :contract_processes
    
    
end
