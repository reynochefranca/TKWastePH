class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :code
      t.string :name
      t.datetime :created_at
      t.datetime :update_at

      t.timestamps null: false
    end
  end
end
