class User < ActiveRecord::Base
  # Query Interface: TraderPlace.joins(:place, :trader => [{trader_edi_user: :edi_user}, :user])
  # user belongs to trader
  belongs_to :trader
  
  # Query Interface: PlaceUser.joins(:user, :place)
  # user has one place_user
  has_one :place_user
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end