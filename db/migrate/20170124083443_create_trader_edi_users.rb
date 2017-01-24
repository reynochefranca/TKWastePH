class CreateTraderEdiUsers < ActiveRecord::Migration
  def change
    create_table :trader_edi_users do |t|
      t.string :trader_id
      t.integer :edi_user_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
