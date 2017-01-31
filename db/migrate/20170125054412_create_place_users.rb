class CreatePlaceUsers < ActiveRecord::Migration
  def change
    create_table :place_users do |t|
      t.belongs_to :place, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
