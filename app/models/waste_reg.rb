class WasteReg < ActiveRecord::Base
    WASTE_TYPES = ['Recyclable','Hazardous','Biodegradable']
    FORMS = ['Solid state','Mud','Liquid']
    PACKING = ['Rose','Container','Drum can','Oil can','Plastic container','Bag','Flexible pack','Cardboard box','Other']
    UNITS = ['t','M3','kg','liter','piece']
end
