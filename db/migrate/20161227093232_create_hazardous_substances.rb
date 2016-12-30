class CreateHazardousSubstances < ActiveRecord::Migration
  def change
    create_table :hazardous_substances do |t|
      t.string :code
      t.string :name
      t.timestamps null: false
    end
  end
end
