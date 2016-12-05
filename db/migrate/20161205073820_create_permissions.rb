class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.interger :trader_id
      t.string :permission_type
      t.datetime :started_at
      t.datetime :limited_at
      t.string :number
      t.string :pdf
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
