class CreateShapes < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.string :code
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
