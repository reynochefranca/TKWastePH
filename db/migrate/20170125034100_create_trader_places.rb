class CreateTraderPlaces < ActiveRecord::Migration
  def change
    create_table :trader_places do |t|
      t.belongs_to :trader, index: true
      t.belongs_to :place, index: true
      t.integer :place_type
      t.timestamps null: false
    end
  end
end
