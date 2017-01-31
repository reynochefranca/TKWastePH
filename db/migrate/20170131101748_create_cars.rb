class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :car_type
      t.string :number

      t.timestamps null: false
    end
  end
end
