class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :trader_id
      t.string :permission_type
      t.string :number
      t.string :pdf
      t.string :permit_type
      t.string :permit_classification
      t.string :permission_number
      t.string :license_name
      t.string :permit_area
      t.string :allow_municipalities
      t.string :permission_period
      t.string :industrial_waste_pay_certification_division

      t.timestamps null: false
    end
  end
end
