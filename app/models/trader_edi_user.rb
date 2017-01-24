class TraderEdiUser < ActiveRecord::Base
    has_many :edi_users
    has_many :roles
    belongs_to :trader
end