class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :contract_type
      t.integer :first_party_id
      t.integer :second_party_id
      t.belongs_to :waste_type, index: true
      t.belongs_to :category, index: true
      t.belongs_to :place, index: true
      t.float :expected_amount
      t.string :industrial_waste_name
      t.string :pdf
      t.belongs_to :shape, index: true
      t.belongs_to :unit, index: true
      t.belongs_to :package, index: true
      t.belongs_to :hazardous_substance, index: true
      t.belongs_to :disposal_method, index: true
      t.integer :status
      
      t.timestamps null: false
    end
  end
end
