class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.text :memo

      t.timestamps null: false
    end
  end
end
