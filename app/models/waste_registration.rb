class WasteRegistration < ActiveRecord::Base
  
    
    validates_presence_of :name, presence => :true
end
