class CreateTransports < ActiveRecord::Migration
  def change
    create_table :transports do |t|
      t.integer :parent_id
      t.integer :manifest_id
      t.integer :collection_trader_id
      t.integer :collection_trader_address_id
      t.integer :car_id
      t.integer :from_place_id
      t.integer :to_place_id
      t.string :transport_method
      t.boolean :transport_flg
      t.boolean :transshipment_storage_flg
      t.integer :valuable_flg
      t.float :valuable_amount
      t.integer :valuable_amount_unit_id, null: true
      t.datetime :accepted_at

      t.timestamps null: false
    end
  end
end
