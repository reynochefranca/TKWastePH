class CreateTraderPlaces < ActiveRecord::Migration
  def change
    create_table :trader_places do |t|
      t.integer :trader_id
      t.integer :place_id
      t.integer :place_type

      t.timestamps null: false
    end
  end
end
