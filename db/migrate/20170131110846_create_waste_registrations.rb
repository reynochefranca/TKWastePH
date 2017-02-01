class CreateWasteRegistrations < ActiveRecord::Migration
  def change
    create_table :waste_registrations do |t|
      t.string :code
      t.string :name
      t.integer :quantity
      t.belongs_to :unit, index: true
      t.belongs_to :waste_type, index: true
      t.belongs_to :shape, index: true
      t.belongs_to :trader, index: true
      t.belongs_to :package, index: true
      t.timestamps null: false
    end
  end
end
