class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :trader_id
      t.string :permit_type
      t.string :permission_type
      t.string :permit_number
      t.string :permitted_waste_classification
      t.string :permit_name
      t.string :allowed_area
      t.string :permitted_municipality
      t.datetime :started_at
      t.datetime :limited_at
      t.string :industrial_waste_paid_certification_category
      t.string :permit_pdf
      
      t.timestamps null: false
    end
  end
end
