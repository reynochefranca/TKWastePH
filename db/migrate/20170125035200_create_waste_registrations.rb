class CreateWasteRegistrations < ActiveRecord::Migration
  def change
    create_table :waste_registrations do |t|
      t.string :code
      t.string :name
      t.integer :quantity
      t.belongs_to :unit, index: true, foreign_key: true
      t.belongs_to :waste_type, index: true, foreign_key: true
      t.belongs_to :shape, index: true, foreign_key: true
      t.belongs_to :trader, index: true, foreign_key: true
      t.belongs_to :package, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
