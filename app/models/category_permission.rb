class CategoryPermission < ActiveRecord::Base
    has_many :permissions
    has_many :categories
end
