class CreateWasteTypes < ActiveRecord::Migration
  def change
    create_table :waste_types do |t|
      t.string :type
      t.string :code
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
