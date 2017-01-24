class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.belongs_to :trader_edi_user

      t.timestamps null: false
    end
  end
end
