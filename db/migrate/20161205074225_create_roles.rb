class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.datetime :created_at
      t.string :updated
      t.string :at
      t.string :datetime

      t.timestamps null: false
    end
  end
end
