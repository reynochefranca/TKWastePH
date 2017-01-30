class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :contract_type
      t.integer :first_party_id
      t.integer :second_party_id
      t.integer :waste_type_id
      t.integer :category_id
      t.integer :place_id
      t.float :expected_amount
      t.string :industrial_waste_name
      t.string :pdf
      t.integer :unit_id
      t.integer :shape_id
      t.integer :package_id
      t.integer :hazardous_substance_id
      t.integer :disposal_method_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
