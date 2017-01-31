class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :code
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
