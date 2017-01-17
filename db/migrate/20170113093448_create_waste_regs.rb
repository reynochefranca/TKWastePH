class CreateWasteRegs < ActiveRecord::Migration
  def change
    create_table :waste_regs do |t|
      t.string :code
      t.string :name
      t.string :waste_type
      t.string :quantity
      t.string :unit
      t.string :form
      t.string :packing

      t.timestamps null: false
    end
  end
end
